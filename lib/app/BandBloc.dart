import 'package:flutter_bloc/flutter_bloc.dart';

/*
this class is used in the start of every stateless page before the scaffold 
used for these : 
- Display context based on state : 
- Refresh : just refresh the bloc builder band and re run every method for this builder like listoning to values to avoid using setState and can change the state from other location the flutter app 
- in the bloc builder don't care for state type 
- in the builder content before return the widget this section should be used 
to liston to any varaibles needed from the BAND service class 
example : 
bloc builder <BandBloc, BandState> {
  variable watchBool = context.read<BAND>().IsUserLoggedIn ;
  return watchBoll ? widget when logged in : widget when not ; 
}
- this will refresh all active pages automaticly when the BAND methods call the refresh method at the end of each set event 

todo : add other state such as Error State or custom errors 

*/

abstract class BANDEvent {}

class RefreshBandEvent extends BANDEvent {
  RefreshBandEvent();
}

abstract class BANDState {}

class RefreshBandState extends BANDState {
  RefreshBandState();
}

class BANDBloc extends Bloc<BANDEvent, BANDState> {
  BANDBloc() : super(RefreshBandState()) {
    on<RefreshBandEvent>((event, emit) {
      emit(RefreshBandState());
      print('page refreshed');
    });
  }
}
