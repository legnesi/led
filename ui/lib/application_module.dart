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
import 'dart:js' as js;

import 'dart:convert';
import 'package:angular/angular.dart';
import 'package:intl/intl.dart';
import 'package:fluentd_log_explorer/utils/js_interop.dart' as jsinterop;
import 'package:quiver/strings.dart' as quiver_strings;
import 'package:quiver/collection.dart' as quiver_collection;
import 'package:quiver/core.dart' as quiver_core;
import 'package:date/date.dart' as external_date_lib;

import 'package:fluentd_log_explorer/utils/utils.dart';

part 'components/footer_cmp.dart';
part 'components/container_config_cmp.dart';
part 'components/container_menu_list_cmp.dart';
part 'components/container_log_cmp.dart';
part 'components/navbar_right_cmp.dart';
part 'components/navbar_brand_cmp.dart';
part 'injectable/l_router.dart';
part 'injectable/l_configuration.dart';
part 'injectable/l_curator.dart';
part 'package:fluentd_log_explorer/es/elastic_search_service.dart';
part 'rest/abstract_rest_service.dart';
part 'package:fluentd_log_explorer/es/elastic_search_query_dsl.dart';
part 'models/models.dart';

class ApplicationModule extends Module {
  ApplicationModule() {
    bind(FooterCmp);
    bind(ContainerMenuListCmp);
    bind(ContainerConfigCmp);
    bind(ContainerLogCmp);
    bind(NavbarRightCmp);
    bind(NavbarBrandCmp);
    bind(ElasticSearchService);
    bind(LRouter);
    bind(LConfiguration);
    bind(LCurator);

    // Routing Mechanism
    bind(RouteInitializerFn, toImplementation: LRouter);
    bind(NgRoutingUsePushState, toValue: new NgRoutingUsePushState.value(false));
  }
}
