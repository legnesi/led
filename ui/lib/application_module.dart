/**
 * Copyright (c) 2016 ui. All rights reserved
 * 
 * REDISTRIBUTION AND USE IN SOURCE AND BINARY FORMS,
 * WITH OR WITHOUT MODIFICATION, ARE NOT PERMITTED.
 * 
 * DO NOT ALTER OR REMOVE THIS HEADER.
 * 
 * Created on : 05/08/16
 * Author     : bwnyasse
 *  
 */
library fluentd_log_explorer;



@MirrorsUsed(targets: const ['fluentd_log_explorer'], override: '*')
import 'dart:mirrors';
import 'dart:async';
import 'dart:html';

import 'dart:convert';
import 'package:angular/angular.dart';

part 'components/container_menu_list_cmp.dart';
part 'components/container_log_cmp.dart';
part 'injectable/elastic_search_service.dart';

class ApplicationModule extends Module {
  ApplicationModule() {

    bind(ContainerMenuListCmp);
    bind(ContainerLogCmp);
    bind(ElasticSearchService);

    // Routing Mechanism
//    bind(RouteInitializerFn, toImplementation: MRouter);
//    bind(NgRoutingUsePushState, toValue: new NgRoutingUsePushState.value(false));
  }
}