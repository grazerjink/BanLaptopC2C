<%-- 
    Document   : dashboard-navbar-message
    Created on : Nov 15, 2017, 10:03:52 PM
    Author     : Winson Mac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="nav-item dropdown ks-messages">
    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
        <span class="la la-envelope ks-icon" aria-hidden="true">
            <span class="badge badge-pill badge-info">3</span>
        </span>
        <span class="ks-text">Messages</span>
    </a>
    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="Preview">
        <section class="ks-tabs-actions">
            <a href="#"><i class="la la-plus ks-icon"></i></a>
            <a href="#"><i class="la la-search ks-icon"></i></a>
        </section>
        <ul class="nav nav-tabs ks-nav-tabs ks-info" role="tablist">
            <li class="nav-item">
                <a class="nav-link active" href="#" data-toggle="tab" data-target="#ks-navbar-messages-inbox" role="tab">Inbox</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#" data-toggle="tab" data-target="#ks-navbar-messages-sent" role="tab">Sent</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#" data-toggle="tab" data-target="#ks-navbar-messages-archive" role="tab">Archive</a>
            </li>
        </ul>
        <div class="tab-content">
            <div class="tab-pane ks-messages-tab active" id="ks-navbar-messages-inbox" role="tabpanel">
                <div class="ks-wrapper ks-scrollable">
                    <a href="#" class="ks-message">
                        <div class="ks-avatar ks-online">
                            <img src="assets/img/avatars/avatar-1.jpg" width="36" height="36">
                        </div>
                        <div class="ks-info">
                            <div class="ks-user-name">Emily Carter</div>
                            <div class="ks-text">In golf, Danny Willett (pictured) wins the M...</div>
                            <div class="ks-datetime">1 minute ago</div>
                        </div>
                    </a>
                    <a href="#" class="ks-message">
                        <div class="ks-avatar ks-online">
                            <img src="assets/img/avatars/avatar-5.jpg" width="36" height="36">
                        </div>
                        <div class="ks-info">
                            <div class="ks-user-name">Emily Carter</div>
                            <div class="ks-text">In golf, Danny Willett (pictured) wins the M...</div>
                            <div class="ks-datetime">1 minute ago</div>
                        </div>
                    </a>
                    <a href="#" class="ks-message">
                        <div class="ks-avatar ks-offline">
                            <img src="assets/img/avatars/placeholders/ava-36.png" width="36" height="36">
                        </div>
                        <div class="ks-info">
                            <div class="ks-user-name">Emily Carter</div>
                            <div class="ks-text">In golf, Danny Willett (pictured) wins the M...</div>
                            <div class="ks-datetime">1 minute ago</div>
                        </div>
                    </a>
                    <a href="#" class="ks-message">
                        <div class="ks-avatar ks-offline">
                            <img src="assets/img/avatars/avatar-4.jpg" width="36" height="36">
                        </div>
                        <div class="ks-info">
                            <div class="ks-user-name">Emily Carter</div>
                            <div class="ks-text">In golf, Danny Willett (pictured) wins the M...</div>
                            <div class="ks-datetime">1 minute ago</div>
                        </div>
                    </a>
                </div>
                <div class="ks-view-all">
                    <a href="#">View all</a>
                </div>
            </div>
            <div class="tab-pane ks-empty" id="ks-navbar-messages-sent" role="tabpanel">
                There are no messages.
            </div>
            <div class="tab-pane ks-empty" id="ks-navbar-messages-archive" role="tabpanel">
                There are no messages.
            </div>
        </div>
    </div>
</div>