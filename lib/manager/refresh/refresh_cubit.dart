import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'refresh_state.dart';

class RefreshCubit extends Cubit<RefreshState> {
  RefreshCubit() : super(RefreshInitial());
}
