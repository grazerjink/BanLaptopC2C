<%-- 
    Document   : dashboard-sidebar
    Created on : Nov 16, 2017, 8:23:18 PM
    Author     : Winson Mac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="ks-column ks-sidebar ks-info">
    <div class="ks-wrapper"> 
        <section>
            <h5 class="ks-header">Main</h5>
            <ul class="nav nav-pills nav-stacked">
                <li class="nav-item dropdown">
                    <a class="nav-link v2q-link dropdown-toggle"  href="javascript:void(0);" role="button" aria-haspopup="true" aria-expanded="false">
                        <span class="ks-icon la la-dashboard"></span>
                        <span>Dashboard</span>
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="index.html">Default</a>
                        <a class="dropdown-item" href="dashboards-mail.html">Mail</a>
                        <a class="dropdown-item" href="dashboards-projects.html">Projects</a>
                        <a class="dropdown-item" href="dashboards-widgets-and-activity.html">Activity</a>
                        <a class="dropdown-item" href="dashboards-draggable-widgets.html">Draggable Widgets</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link v2q-link dropdown-toggle"  href="javascript:void(0);" role="button" aria-haspopup="true" aria-expanded="false">
                        <span class="ks-icon la la-cubes"></span>
                        <span>Layouts</span>
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="../sidebar_sections-primary/index.html">Default</a>
                        <div class="nav-item dropdown">
                            <a class="nav-link v2q-link dropdown-toggle"  href="javascript:void(0);" role="button" aria-haspopup="true" aria-expanded="false">
                                <span>Sidebar</span>
                            </a>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="../sidebar_sections-primary/index.html" target="_blank">Sections</a>
                                <a class="dropdown-item" href="../sidebar_compact-primary/index.html" target="_blank">Compact</a>
                                <a class="dropdown-item" href="../sidebar_iconbar-primary/index.html" target="_blank">Iconbar</a>
                                <a class="dropdown-item" href="../sidebar_iconbar_compact-primary/index.html" target="_blank">Iconbar Compact</a>
                            </div>
                        </div>
                        <div class="nav-item dropdown">
                            <a class="nav-link v2q-link dropdown-toggle"  href="javascript:void(0);" role="button" aria-haspopup="true" aria-expanded="false">
                                <span>Navigation</span>
                            </a>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="../horizontal_navbar-primary/index.html" target="_blank">Horizontal</a>
                                <a class="dropdown-item" href="../horizontal_navbar_iconbar-primary/index.html" target="_blank">Horizontal Iconbar</a>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </section>
        <section>
            <h5 class="ks-header">Applications</h5>
            <ul class="nav nav-pills nav-stacked">
                <div class="nav-item dropdown">
                    <a class="nav-link v2q-link dropdown-toggle"  href="javascript:void(0);" role="button" aria-haspopup="true" aria-expanded="false">
                        <span class="ks-icon la la-flask"></span>
                        <span>CRM</span>
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="crm-contacts.html">Contacts</a>
                        <a class="dropdown-item" href="crm-user-contact-view.html">User Contact View</a>
                        <a class="dropdown-item" href="crm-users-list-view.html">Users List View</a>
                        <a class="dropdown-item" href="crm-users-grid-view.html">Users Grid View</a>
                        <a class="dropdown-item" href="crm-roles-and-permissions.html">Roles &amp; Permissions</a>
                    </div>
                </div>
                <div class="nav-item dropdown">
                    <a class="nav-link v2q-link dropdown-toggle"  href="javascript:void(0);" role="button" aria-haspopup="true" aria-expanded="false">
                        <span class="ks-icon la la-flask"></span>
                        <span>Projects</span>
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="projects-kanban-board.html">Kanban Board</a>
                        <a class="dropdown-item" href="projects-grid-board.html">Grid Board</a>
                        <a class="dropdown-item" href="projects-tasks.html">Tasks</a>
                        <a class="dropdown-item" href="projects-task.html">Task</a>
                    </div>
                </div>
                <div class="nav-item dropdown">
                    <a class="nav-link v2q-link dropdown-toggle"  href="javascript:void(0);" role="button" aria-haspopup="true" aria-expanded="false">
                        <span class="ks-icon la la-envelope-o"></span>
                        <span>Mail</span>
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="mail-empty.html">Mail Empty</a>
                        <a class="dropdown-item" href="mail-view.html">Mail View</a>
                        <a class="dropdown-item" href="mail-create.html">Mail Create</a>
                        <a class="dropdown-item" href="mail-compact.html">Mail Compact</a>
                    </div>
                </div>
                <div class="nav-item dropdown">
                    <a class="nav-link v2q-link dropdown-toggle"  href="javascript:void(0);" role="button" aria-haspopup="true" aria-expanded="false">
                        <span class="ks-icon la la-ticket"></span>
                        <span>Tickets</span>
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="tickets-empty.html">Empty</a>
                        <a class="dropdown-item" href="tickets-list.html">List</a>
                        <a class="dropdown-item" href="tickets-create.html">Create</a>
                        <a class="dropdown-item" href="tickets-view.html">View</a>
                    </div>
                </div>
                <div class="nav-item dropdown">
                    <a class="nav-link v2q-link dropdown-toggle"  href="javascript:void(0);" role="button" aria-haspopup="true" aria-expanded="false">
                        <span class="ks-icon la la-comments-o"></span>
                        <span>Messenger</span>
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="messenger.html">Default</a>
                        <a class="dropdown-item" href="messenger-group.html">Group</a>
                    </div>
                </div>
                <div class="nav-item dropdown">
                    <a class="nav-link v2q-link dropdown-toggle"  href="javascript:void(0);" role="button" aria-haspopup="true" aria-expanded="false">
                        <span class="ks-icon la la-file-archive-o"></span>
                        <span>File Manager</span>
                    </a>
                    <div class="dropdown-menu">
                        <div class="nav-item dropdown">
                            <a class="nav-link v2q-link dropdown-toggle"  href="javascript:void(0);" role="button" aria-haspopup="true" aria-expanded="false">
                                <span>Grid</span>
                            </a>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="filemanager-grid.html">Default</a>
                                <a class="dropdown-item" href="filemanager-grid-selected-items.html">Selected Items</a>
                                <a class="dropdown-item" href="filemanager-grid-image.html">Image</a>
                                <a class="dropdown-item" href="filemanager-grid-audio.html">Audio</a>
                                <a class="dropdown-item" href="filemanager-grid-recent.html">Recent</a>
                            </div>
                        </div>
                        <div class="nav-item dropdown">
                            <a class="nav-link v2q-link dropdown-toggle"  href="javascript:void(0);" role="button" aria-haspopup="true" aria-expanded="false">
                                <span>List</span>
                            </a>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="filemanager-list.html">Default</a>
                                <a class="dropdown-item" href="filemanager-list-selected-items.html">Selected Items</a>
                                <a class="dropdown-item" href="filemanager-list-recent.html">Recent</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="nav-item dropdown">
                    <a class="nav-link v2q-link dropdown-toggle"  href="javascript:void(0);" role="button" aria-haspopup="true" aria-expanded="false">
                        <span class="ks-icon la la-eye"></span>
                        <span>Document Viewer</span>
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="document-viewer-image.html">Image Viewer</a>
                        <a class="dropdown-item" href="document-viewer-pdf.html">Pdf Viewer</a>
                        <a class="dropdown-item" href="document-viewer-presentation.html">Presentation Viewer</a>
                        <a class="dropdown-item" href="document-viewer-audio.html">Audio Viewer</a>
                    </div>
                </div>
                <li class="nav-item">
                    <a class="nav-link v2q-link" href="music-app.html">
                        <span class="ks-icon la la-music"></span>
                        <span>Music</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link v2q-link" href="calendar.html">
                        <span class="ks-icon la la-calendar-o"></span>
                        <span>Calendar</span>
                    </a>
                </li>
            </ul>
        </section>
        <div class="ks-sidebar-extras-block">
            <div class="ks-sidebar-copyright">© 2017 V2Q MALL. All right reserved</div>
        </div>
    </div>
</div>
