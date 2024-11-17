import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:futbiostats/domain/entities/athlete.dart';
import 'package:futbiostats/presentation/providers/athlete_provider.dart';
import 'package:futbiostats/presentation/widgets/add_athlete_dialog.dart';
import 'package:futbiostats/presentation/widgets/drawer_custom.dart';
import 'package:futbiostats/presentation/widgets/icon_button_custom.dart';
import 'package:futbiostats/presentation/widgets/athlete_item.dart';

class AthletesMainScreen extends StatelessWidget {
  static const name = 'athletes-main-screen';
  const AthletesMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: _appBar(context, colorScheme),
      drawer: const DrawerCustom(),
      body: const Padding(
        padding: EdgeInsets.only(top: 10.0, bottom: 50),
        child: ListAthletesView(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  AppBar _appBar(BuildContext context, ColorScheme colorScheme) {
    return AppBar(
      centerTitle: true,
      title: Text(
        'FUTBIOSTATS',
        style:
            Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold, color: colorScheme.onPrimary),
      ),
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: Icon(Icons.menu, color: colorScheme.onPrimary),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        },
      ),
      actions: [
        IconButtonCustom(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return CreateAndUpdateAthlete();
                },
              );
            },
            icon: Icons.add,
            background: true),
      ],
      backgroundColor: colorScheme.onPrimaryContainer,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
      ),
    );
  }
}

class ListAthletesView extends ConsumerStatefulWidget {
  const ListAthletesView({super.key});

  @override
  ListAthletesViewState createState() => ListAthletesViewState();
}

class ListAthletesViewState extends ConsumerState<ListAthletesView> with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    super.initState();
    loadNextPage();
  }

  void loadNextPage() {
    ref.read(athleteProvider.notifier).loadAthletes();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    final athleteAll = ref.watch(athleteProvider);

    return athleteAll.isNotEmpty
        ? ListView.builder(
            itemCount: athleteAll.length,
            itemBuilder: (context, index) {
              Athlete athlete = athleteAll[index];
              //Cambiar
              return AthleteItem(athlete: athlete);
            },
          )
        : Container();
  }

  @override
  bool get wantKeepAlive => true;
}
