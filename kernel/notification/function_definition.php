<?php
//
// Created on: <14-May-2003 16:37:37 sp>
//
// Copyright (C) 1999-2004 eZ systems as. All rights reserved.
//
// This source file is part of the eZ publish (tm) Open Source Content
// Management System.
//
// This file may be distributed and/or modified under the terms of the
// "GNU General Public License" version 2 as published by the Free
// Software Foundation and appearing in the file LICENSE included in
// the packaging of this file.
//
// Licencees holding a valid "eZ publish professional licence" version 2
// may use this file in accordance with the "eZ publish professional licence"
// version 2 Agreement provided with the Software.
//
// This file is provided AS IS with NO WARRANTY OF ANY KIND, INCLUDING
// THE WARRANTY OF DESIGN, MERCHANTABILITY AND FITNESS FOR A PARTICULAR
// PURPOSE.
//
// The "eZ publish professional licence" version 2 is available at
// http://ez.no/ez_publish/licences/professional/ and in the file
// PROFESSIONAL_LICENCE included in the packaging of this file.
// For pricing of this licence please contact us via e-mail to licence@ez.no.
// Further contact information is available at http://ez.no/company/contact/.
//
// The "GNU General Public License" (GPL) is available at
// http://www.gnu.org/copyleft/gpl.html.
//
// Contact licence@ez.no if any conditions of this licencing isn't clear to
// you.
//

/*! \file function_definition.php
*/

$FunctionList = array();
$FunctionList['handler_list'] = array( 'name' => 'handler_list',
                                       'operation_types' => array( 'read' ),
                                       'call_method' => array( 'include_file' => 'kernel/notification/eznotificationfunctioncollection.php',
                                                               'class' => 'eZNotificationFunctionCollection',
                                                               'method' => 'handlerList' ),
                                       'parameter_type' => 'standard',
                                       'parameters' => array( ) );

$FunctionList['digest_handlers'] = array( 'name' => 'digest_handlers',
                                          'operation_types' => array( 'read' ),
                                          'call_method' => array( 'include_file' => 'kernel/notification/eznotificationfunctioncollection.php',
                                                               'class' => 'eZNotificationFunctionCollection',
                                                               'method' => 'digestHandlerList' ),
                                          'parameter_type' => 'standard',
                                          'parameters' => array( array( 'name' => 'date',
                                                                        'type' => 'integer',
                                                                        'required' => true ),
                                                                 array( 'name' => 'address',
                                                                        'type' => 'string',
                                                                        'required' => true ) ) );


$FunctionList['digest_items'] = array( 'name' => 'digest_items',
                                       'operation_types' => array( 'read' ),
                                       'call_method' => array( 'include_file' => 'kernel/notification/eznotificationfunctioncollection.php',
                                                               'class' => 'eZNotificationFunctionCollection',
                                                               'method' => 'digestItems' ),
                                       'parameter_type' => 'standard',
                                       'parameters' => array( array( 'name' => 'date',
                                                                     'type' => 'integer',
                                                                     'required' => true ),
                                                              array( 'name' => 'address',
                                                                     'type' => 'string',
                                                                     'required' => true ),
                                                              array( 'name' => 'handler',
                                                                     'type' => 'string',
                                                                     'required' => true ) ) );


$FunctionList['event_content'] = array( 'name' => 'event_content',
                                       'operation_types' => array( 'read' ),
                                       'call_method' => array( 'include_file' => 'kernel/notification/eznotificationfunctioncollection.php',
                                                               'class' => 'eZNotificationFunctionCollection',
                                                               'method' => 'eventContent' ),
                                       'parameter_type' => 'standard',
                                       'parameters' => array( array( 'name' => 'event_id',
                                                                     'type' => 'integer',
                                                                     'required' => true ) ) );

$FunctionList['subscribed_nodes'] = array( 'name' => 'subscribed_nodes',
                                           'operation_types' => array( 'read' ),
                                           'call_method' => array( 'include_file' => 'kernel/notification/eznotificationfunctioncollection.php',
                                                                   'class' => 'eZNotificationFunctionCollection',
                                                                   'method' => 'subscribedNodes' ),
                                           'parameter_type' => 'standard',
                                           'parameters' => array( array( 'name' => 'offset',
                                                                         'type' => 'integer',
                                                                         'default' => false,
                                                                         'required' => false ),
                                                                  array( 'name' => 'limit',
                                                                         'type' => 'integer',
                                                                         'default' => false,
                                                                         'required' => false ) ) );

$FunctionList['subscribed_nodes_count'] = array( 'name' => 'subscribed_nodes_count',
                                                 'operation_types' => array( 'read' ),
                                                 'call_method' => array( 'include_file' => 'kernel/notification/eznotificationfunctioncollection.php',
                                                                         'class' => 'eZNotificationFunctionCollection',
                                                                         'method' => 'subscribedNodesCount' ),
                                                 'parameter_type' => 'standard',
                                                 'parameters' => array() );

?>
