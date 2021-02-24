import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../core/failures.dart';
import '../entities/detail_messages.dart';

abstract class IMessagesFacade {
  Future<Either<ServerFailure, DetailMessages>> getMessages();
  Future<Either<ServerFailure, DetailMessages>> getMessagesDetails({
    @required int id,
    @required int offset,
  });
}
