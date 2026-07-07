.class public abstract Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;
.super Lcom/magoware/magoware/webtv/activities/CustomActivity;
.source "LiveTvPlayerSuperclass.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$DialogDismissListener;
.implements Lcom/magoware/magoware/webtv/players/PasswordPromptDialog$ViewClickedListener;
.implements Lcom/magoware/magoware/webtv/players/PasswordPromptDialog$CurrentChannelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ClosePlayerActivityAfterInActivity;,
        Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$Dismiss_OSD_CatchUp;,
        Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$SwitchChannelWithNumber;,
        Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;,
        Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$CheckPassword;,
        Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$Dismiss_OSD_display;,
        Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;
    }
.end annotation


# static fields
.field public static CURRENT_CHANNEL_POSITION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "LiveTvPlayerSuperclass "

.field public static accessWay:Ljava/lang/String; = ""

.field public static isCatchupStream:Z

.field public static openedView:Ljava/lang/String;

.field public static osdCatchp:Z

.field private static playOnActivityPaused:Z


# instance fields
.field private final ALL_CATEGORIES:I

.field private CHANGE_CHANNEL_DELAY:I

.field private ClosePlayerRunnable:Ljava/lang/Runnable;

.field protected Dismiss_OSD_CatchUp:Ljava/lang/Runnable;

.field private Dismiss_OSD_display:Ljava/lang/Runnable;

.field private activityStartTime:J

.field public activity_paused:Z

.field private adUiViewGroup:Landroid/view/ViewGroup;

.field private adult_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

.field private adult_channel_access_way:Ljava/lang/String;

.field private adult_channel_to_play:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

.field private adult_zone:Z

.field private broadcastReceiver:Landroid/content/BroadcastReceiver;

.field public catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

.field private catchupHandler:Landroid/os/Handler;

.field public channelLoadTime:J

.field private channelNumber:I

.field private channelStartTime:J

.field public channelStartupTime:J

.field private channel_carousel_adapter:Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter;

.field private channel_epg:Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/EpgObject;",
            ">;"
        }
    .end annotation
.end field

.field private channel_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;",
            ">;"
        }
    .end annotation
.end field

.field private channels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;",
            ">;"
        }
    .end annotation
.end field

.field private channels_gridview:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

.field private close_player:Z

.field private close_player_alert:Landroidx/appcompat/app/AlertDialog;

.field private close_player_message:Landroid/widget/TextView;

.field private close_player_prompt_dialog:Landroid/app/Dialog;

.field private currentCategoryReceiver:Landroid/content/BroadcastReceiver;

.field public current_category_id:I

.field private current_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

.field private current_playing_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

.field private date_:Landroid/widget/TextView;

.field private debugTextView:Landroid/widget/TextView;

.field difference:J

.field difference1:J

.field private elapsedMillis1:I

.field private elapsedTimeChannel:J

.field private endlessScroll:Z

.field private from_GenresOnClick:Z

.field public gDetector:Landroid/view/GestureDetector;

.field private genre:Landroid/widget/ImageView;

.field private genresList:Landroid/widget/ListView;

.field private get_channel_object:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

.field private grid_view_menu_layout:Landroid/widget/LinearLayout;

.field public handler3:Landroid/os/Handler;

.field private height:I

.field private inErrorState:Z

.field public is_adult_content:Z

.field private lastPos:I

.field private last_channel_icon:Landroid/widget/Button;

.field private last_key_time:J

.field private last_token:Ljava/lang/String;

.field private last_token_url:Ljava/lang/String;

.field private last_view:Landroid/view/View;

.field public liveTVStartupTime:J

.field private loadedAdTagUri:Landroid/net/Uri;

.field public logPlayHandler:Landroid/os/Handler;

.field public logPlayRunnable:Ljava/lang/Runnable;

.field public log_event_interval:I

.field private logo_menu:Landroid/widget/ImageView;

.field private magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

.field private mainHandler:Landroid/os/Handler;

.field private metrics:Landroid/util/DisplayMetrics;

.field private needRetrySource:Z

.field private new_channel_carousel:Landroidx/leanback/widget/HorizontalGridView;

.field private ok_btn:Landroid/widget/Button;

.field private passwordPromptDialog:Lcom/magoware/magoware/webtv/players/PasswordPromptDialog;

.field private pin:Ljava/lang/String;

.field public playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

.field private previous_playing_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

.field private progressDialogCatchup:Landroid/app/ProgressDialog;

.field private pushNotificationLayout:Lcom/magoware/magoware/webtv/firebase/PushNotificationLayout;

.field protected resumePosition:J

.field protected resumeWindow:I

.field private rootView:Landroid/view/View;

.field private sendExitLog:Z

.field private shouldContinueLastChannel:Z

.field private showTraditionalOsd:Z

.field private show_new_close_player_dialog:Z

.field private side_bar:Landroid/widget/ListView;

.field private side_bar_category_id:I

.field private side_bar_position:I

.field public slide_left_right_animation:Landroid/view/animation/Animation;

.field public slide_right_left_animation:Landroid/view/animation/Animation;

.field public standart_fade_in_animation:Landroid/view/animation/Animation;

.field public standart_fade_out_animation:Landroid/view/animation/Animation;

.field private startAutoPlay:Z

.field private startPosition:J

.field startTime:J

.field startTime1:J

.field private startWindow:I

.field private switcher:Landroid/widget/TextView;

.field private switcher_layout:Landroid/widget/LinearLayout;

.field private swithChannelWithNumber:Ljava/lang/Runnable;

.field private temporary_current_category_id:I

.field private this_activity:Lcom/magoware/magoware/webtv/activities/CustomActivity;

.field private timeStart:Ljava/lang/String;

.field private timeStartCatchup:Ljava/lang/String;

.field private tooManyRequests:Z

.field private userAgent:Ljava/lang/String;

.field private wide_channels_gridview:Landroid/widget/GridView;

.field private widthPixelScreen:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 110
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/activities/CustomActivity;-><init>()V

    const/16 v0, 0x320

    .line 114
    iput v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->CHANGE_CHANNEL_DELAY:I

    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->is_adult_content:Z

    const/4 v1, 0x0

    .line 124
    iput-boolean v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->endlessScroll:Z

    .line 125
    iput-boolean v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->from_GenresOnClick:Z

    .line 126
    iput-boolean v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->activity_paused:Z

    const-string v2, ""

    .line 137
    iput-object v2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->pin:Ljava/lang/String;

    .line 143
    iput v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->ALL_CATEGORIES:I

    .line 163
    iput-object v2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->last_token:Ljava/lang/String;

    const-wide/16 v3, 0x0

    .line 164
    iput-wide v3, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->last_key_time:J

    .line 165
    iput-object v2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->last_token_url:Ljava/lang/String;

    .line 166
    iput-boolean v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->tooManyRequests:Z

    .line 168
    iput-wide v3, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->channelStartTime:J

    .line 169
    iput-wide v3, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->elapsedTimeChannel:J

    .line 174
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->logPlayHandler:Landroid/os/Handler;

    .line 181
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->close_player:Z

    .line 198
    iput-object v2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->timeStart:Ljava/lang/String;

    .line 205
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->sendExitLog:Z

    .line 209
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->showTraditionalOsd:Z

    .line 210
    iput-wide v3, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->liveTVStartupTime:J

    .line 211
    iput-wide v3, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->channelStartupTime:J

    .line 212
    iput-wide v3, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->channelLoadTime:J

    const/16 v0, 0xb4

    .line 213
    iput v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->log_event_interval:I

    .line 1698
    new-instance v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$4;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$4;-><init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->logPlayRunnable:Ljava/lang/Runnable;

    .line 2093
    new-instance v0, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$ZXzfNcn77_nNp1IGkDlzX5UJt6U;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$ZXzfNcn77_nNp1IGkDlzX5UJt6U;-><init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->swithChannelWithNumber:Ljava/lang/Runnable;

    .line 2095
    new-instance v0, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$QXv0-M8iydOWf0DhxlLGg0sSyUE;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$QXv0-M8iydOWf0DhxlLGg0sSyUE;-><init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->ClosePlayerRunnable:Ljava/lang/Runnable;

    .line 2097
    new-instance v0, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$B1zuI8FJH5JKEEIrAcE7BGKdOiQ;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$B1zuI8FJH5JKEEIrAcE7BGKdOiQ;-><init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->Dismiss_OSD_CatchUp:Ljava/lang/Runnable;

    .line 2099
    new-instance v0, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$fLXyLigfL2CMZV9pBosnOQB-gg8;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$fLXyLigfL2CMZV9pBosnOQB-gg8;-><init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->Dismiss_OSD_display:Ljava/lang/Runnable;

    .line 2101
    new-instance v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$5;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$5;-><init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2110
    new-instance v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$6;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$6;-><init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->currentCategoryReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$100(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)Landroid/widget/ListView;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->genresList:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)Ljava/util/ArrayList;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->channels:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->channels:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)Z
    .locals 0

    .line 110
    iget-boolean p0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->shouldContinueLastChannel:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->setEventListeners()V

    return-void
.end method

.method static synthetic access$1300(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->initalizeAdapters()V

    return-void
.end method

.method static synthetic access$1400(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->refreshGenreListLayout()V

    return-void
.end method

.method static synthetic access$1502(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->pin:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)Landroid/widget/LinearLayout;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->switcher_layout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)Landroid/widget/TextView;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->switcher:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)Z
    .locals 0

    .line 110
    iget-boolean p0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->show_new_close_player_dialog:Z

    return p0
.end method

.method static synthetic access$1900(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)Landroid/app/Dialog;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->close_player_prompt_dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$200(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)Landroid/widget/ImageView;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->genre:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->close_player_alert:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)Z
    .locals 0

    .line 110
    iget-boolean p0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->close_player:Z

    return p0
.end method

.method static synthetic access$2102(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;Z)Z
    .locals 0

    .line 110
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->close_player:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)Lcom/magoware/magoware/webtv/firebase/PushNotificationLayout;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->pushNotificationLayout:Lcom/magoware/magoware/webtv/firebase/PushNotificationLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)Landroid/widget/GridView;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->wide_channels_gridview:Landroid/widget/GridView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)Landroid/widget/ListView;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->side_bar:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)I
    .locals 0

    .line 110
    iget p0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->side_bar_position:I

    return p0
.end method

.method static synthetic access$700(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)Ljava/lang/String;
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getCategory()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->findAllViews()V

    return-void
.end method

.method static synthetic access$900(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->initializeStateVariables()V

    return-void
.end method

.method private cancelChannelChangeByNumber()V
    .locals 2

    .line 1023
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->switcher_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1024
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->swithChannelWithNumber:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1025
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->switcher_layout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1026
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->switcher:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private catchupNavigation(ILandroid/view/KeyEvent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    .line 2121
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-nez v0, :cond_b

    .line 2122
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->day7:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->left2:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/16 v0, 0x15

    if-ne p1, v0, :cond_2

    .line 2123
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->goToLive:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2124
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->requestFocusPauseButton()V

    :cond_1
    return v2

    .line 2127
    :cond_2
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->goToLive:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x14

    if-ne p1, v0, :cond_4

    .line 2128
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->listOfSelectedDayButtons:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_3

    .line 2129
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->right1:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->requestFocus()Z

    return v2

    .line 2132
    :cond_3
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->setFocusedButton()Z

    return v2

    .line 2135
    :cond_4
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->right1:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isFocused()Z

    move-result v0

    const/16 v3, 0x13

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->left1:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isFocused()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->left2:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isFocused()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->right2:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    if-ne p1, v3, :cond_7

    .line 2136
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->listOfSelectedDayButtons:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_6

    .line 2137
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->goToLive:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->requestFocus()Z

    return v2

    .line 2140
    :cond_6
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->setFocusedButton()Z

    return v2

    .line 2143
    :cond_7
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->day4:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_8

    if-ne p1, v3, :cond_8

    .line 2144
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->left1:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->requestFocus()Z

    return v2

    .line 2146
    :cond_8
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->getToday()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_9

    if-ne p1, v3, :cond_9

    .line 2147
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->right2:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->requestFocus()Z

    return v2

    :cond_9
    if-ne p1, v1, :cond_a

    .line 2150
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->standart_fade_out_animation:Landroid/view/animation/Animation;

    invoke-static {p1, p2}, Lcom/magoware/magoware/webtv/util/Utils;->setViewGoneWithAnimation(Landroid/view/View;Landroid/view/animation/Animation;)V

    return v2

    .line 2170
    :cond_a
    invoke-super {p0, p1, p2}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_b
    const/16 v0, 0x17

    if-eq p1, v0, :cond_e

    const/16 v0, 0x42

    if-ne p1, v0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v0, 0x0

    if-ne p1, v1, :cond_d

    .line 2161
    sput-boolean v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->osdCatchp:Z

    .line 2162
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->onStop()V

    .line 2163
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->finish()V

    goto :goto_1

    .line 2165
    :cond_d
    sput-boolean v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->osdCatchp:Z

    .line 2166
    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_1

    .line 2155
    :cond_e
    :goto_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->updatetv()V

    .line 2156
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->standart_fade_in_animation:Landroid/view/animation/Animation;

    invoke-static {p1, p2}, Lcom/magoware/magoware/webtv/util/Utils;->setViewVisibleWithAnimation(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 2157
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->requestFocus()Z

    .line 2158
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->requestFocusFromTouch()Z

    :goto_1
    return v2
.end method

.method private checkPassword()V
    .locals 3

    .line 1122
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PIN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1123
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PIN:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->pin:Ljava/lang/String;

    .line 1125
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1126
    const-class v1, Lcom/magoware/magoware/webtv/players/PasswordActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1127
    sget-object v1, Lcom/magoware/magoware/webtv/util/Utils;->PASSWORD_DIALOG_TITLE:Ljava/lang/String;

    const v2, 0x7f14030e

    invoke-virtual {p0, v2}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1128
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private closeActivity()V
    .locals 2

    .line 1296
    invoke-static {}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->get()Lcom/magoware/magoware/webtv/util/CustomConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->isScreenRotationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1297
    invoke-static {}, Lcom/magoware/magoware/webtv/MagowareApplication;->get()Lcom/magoware/magoware/webtv/MagowareApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/MagowareApplication;->getPreviousOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1298
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1299
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->setRequestedOrientation(I)V

    .line 1301
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1302
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->finish()V

    return-void
.end method

.method private findAllViews()V
    .locals 1

    const v0, 0x7f0b0165

    .line 1583
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->channels_gridview:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    const v0, 0x7f0b0704

    .line 1584
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->wide_channels_gridview:Landroid/widget/GridView;

    const v0, 0x7f0b05c9

    .line 1585
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->side_bar:Landroid/widget/ListView;

    const v0, 0x7f0b02ed

    .line 1586
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->grid_view_menu_layout:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0610

    .line 1587
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->switcher_layout:Landroid/widget/LinearLayout;

    const v0, 0x7f0b01d2

    .line 1588
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->date_:Landroid/widget/TextView;

    const v0, 0x7f0b060f

    .line 1589
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->switcher:Landroid/widget/TextView;

    const v0, 0x7f0b0154

    .line 1590
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->logo_menu:Landroid/widget/ImageView;

    return-void
.end method

.method private getCategory()Ljava/lang/String;
    .locals 1

    .line 1723
    sget-boolean v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->isCatchupStream:Z

    if-eqz v0, :cond_0

    const-string v0, "catchup start"

    goto :goto_0

    :cond_0
    const-string v0, "live tv"

    :goto_0
    return-object v0
.end method

.method private getChannelInfo()V
    .locals 2

    .line 1318
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getCurrentPlayingChannel()Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v1

    iget v1, v1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->channel_number:I

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getChannelInfoObservable(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$eE4xLCPSQTEP-AIYmea5_SWuhYQ;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$eE4xLCPSQTEP-AIYmea5_SWuhYQ;-><init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private initView()V
    .locals 2

    const v0, 0x7f0b054f

    .line 980
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->rootView:Landroid/view/View;

    .line 981
    sget-object v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->PES:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    const v0, 0x7f0b0494

    .line 982
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/HorizontalGridView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->new_channel_carousel:Landroidx/leanback/widget/HorizontalGridView;

    const v0, 0x7f0b0504

    .line 983
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/players/OsdBox;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    const v0, 0x7f0b0142

    .line 984
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    .line 985
    invoke-virtual {v0, p0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->setDialogDismissListener(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$DialogDismissListener;)V

    const v0, 0x7f0b06d4

    .line 986
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/firebase/PushNotificationLayout;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->pushNotificationLayout:Lcom/magoware/magoware/webtv/firebase/PushNotificationLayout;

    return-void
.end method

.method private initalizeAdapters()V
    .locals 4

    .line 1306
    new-instance v0, Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->channels:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->endlessScroll:Z

    iget v3, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->current_category_id:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ZI)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->channel_carousel_adapter:Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter;

    .line 1307
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->new_channel_carousel:Landroidx/leanback/widget/HorizontalGridView;

    invoke-virtual {v1, v0}, Landroidx/leanback/widget/HorizontalGridView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private initializeStateVariables()V
    .locals 3

    .line 1594
    iput-object p0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->this_activity:Lcom/magoware/magoware/webtv/activities/CustomActivity;

    .line 1595
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ADULT_CHANNEL:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->is_adult_content:Z

    .line 1596
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->LOG_EVENT_INTERVAL:Ljava/lang/String;

    const/16 v2, 0x258

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->log_event_interval:I

    .line 1598
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "current_cat_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1600
    iput v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->current_category_id:I

    goto :goto_0

    .line 1602
    :cond_0
    iput v2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->current_category_id:I

    .line 1603
    :goto_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "should_continue_last_channel"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->shouldContinueLastChannel:Z

    .line 1604
    iput v2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->side_bar_category_id:I

    return-void
.end method

.method static synthetic lambda$onSingleTapUp$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private loadAnimations()V
    .locals 1

    const v0, 0x7f01003b

    .line 1311
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->standart_fade_out_animation:Landroid/view/animation/Animation;

    const v0, 0x7f01003a

    .line 1312
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->standart_fade_in_animation:Landroid/view/animation/Animation;

    const v0, 0x7f010036

    .line 1313
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->slide_left_right_animation:Landroid/view/animation/Animation;

    const v0, 0x7f010039

    .line 1314
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->slide_right_left_animation:Landroid/view/animation/Animation;

    return-void
.end method

.method private onNumberClicked(ILandroid/view/KeyEvent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    .line 1776
    invoke-super {p0, p1, p2}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 1758
    :pswitch_0
    sget-object p2, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    const-string v0, "channelCarousel"

    invoke-static {p2, v0}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1759
    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->toggleChannelCarousel(Z)V

    goto :goto_0

    .line 1760
    :cond_0
    sget-object p2, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    const-string v1, "osd"

    invoke-static {p2, v1}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1761
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->toggleOSD(Z)V

    goto :goto_0

    .line 1762
    :cond_1
    sget-object p2, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    const-string v1, "channelMenu"

    invoke-static {p2, v1}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1763
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->toggleChannelMenu()V

    .line 1765
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->switcher_layout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_3

    .line 1766
    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->switcher_layout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1768
    :cond_3
    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->switcher:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-lt p2, v1, :cond_4

    .line 1769
    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->switcher:Landroid/widget/TextView;

    add-int/lit8 p1, p1, -0x7

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1771
    :cond_4
    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->switcher:Landroid/widget/TextView;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    add-int/lit8 p1, p1, -0x7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "%s%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1773
    :goto_1
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->switchChannelWithNumberControl()V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private refreshGenreListLayout()V
    .locals 8

    .line 1571
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1572
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/OsdBox;->getVisibility()I

    move-result v0

    const/16 v1, 0xdc

    if-nez v0, :cond_0

    .line 1573
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->genresList:Landroid/widget/ListView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v1}, Lcom/magoware/magoware/webtv/util/Utils;->convertDPI(Landroid/content/Context;I)I

    move-result v1

    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->metrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v4, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    invoke-virtual {v4}, Lcom/magoware/magoware/webtv/players/OsdBox;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-direct {v2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1574
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->new_channel_carousel:Landroidx/leanback/widget/HorizontalGridView;

    invoke-virtual {v0}, Landroidx/leanback/widget/HorizontalGridView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1575
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->genresList:Landroid/widget/ListView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v1}, Lcom/magoware/magoware/webtv/util/Utils;->convertDPI(Landroid/content/Context;I)I

    move-result v1

    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->metrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070093

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x3ff3333333333333L    # 1.2

    mul-double v4, v4, v6

    double-to-int v4, v4

    sub-int/2addr v3, v4

    invoke-direct {v2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1577
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->genresList:Landroid/widget/ListView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v1}, Lcom/magoware/magoware/webtv/util/Utils;->convertDPI(Landroid/content/Context;I)I

    move-result v1

    const/4 v3, -0x1

    invoke-direct {v2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private refreshMenuChannels(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "category_id"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1495
    iget-boolean p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->is_adult_content:Z

    invoke-static {p1}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getAllObjectChannels(Z)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    .line 1496
    :cond_0
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->is_adult_content:Z

    invoke-static {p1, v0}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getAllObjectChannels(IZ)Ljava/util/ArrayList;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->channel_list:Ljava/util/List;

    .line 1497
    new-instance p1, Lcom/magoware/magoware/webtv/adapters/TwoWayChannelAdapter;

    const v0, 0x7f0e0151

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->channel_list:Ljava/util/List;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->channels_gridview:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayChannelAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)V

    .line 1498
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->wide_channels_gridview:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1499
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->wide_channels_gridview:Landroid/widget/GridView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setSelection(I)V

    return-void
.end method

.method private scrollToCertainPosition(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "title"
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    .line 1557
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->channels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    .line 1558
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->new_channel_carousel:Landroidx/leanback/widget/HorizontalGridView;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/HorizontalGridView;->scrollToPosition(I)V

    goto :goto_0

    .line 1559
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->channels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-ne p1, v0, :cond_1

    .line 1560
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->new_channel_carousel:Landroidx/leanback/widget/HorizontalGridView;

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/HorizontalGridView;->scrollToPosition(I)V

    goto :goto_0

    :cond_1
    if-le p1, v1, :cond_2

    .line 1561
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->channels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-ge p1, v0, :cond_2

    .line 1562
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->new_channel_carousel:Landroidx/leanback/widget/HorizontalGridView;

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/HorizontalGridView;->scrollToPosition(I)V

    .line 1564
    :cond_2
    :goto_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$O0OA41lK9oqZQRtzJCKCRw-UfSs;

    invoke-direct {v0, p0, p2}, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$O0OA41lK9oqZQRtzJCKCRw-UfSs;-><init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;Ljava/lang/String;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

.method private setAppropriateSideBar(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1438
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    iget p1, p1, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;->id:I

    const/16 v1, 0x29a

    if-eq p1, v1, :cond_0

    .line 1439
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->side_bar:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 1440
    iput v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->side_bar_position:I

    goto :goto_0

    .line 1442
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->side_bar:Landroid/widget/ListView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 1443
    iput v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->side_bar_position:I

    :goto_0
    return-void
.end method

.method private setEventListeners()V
    .locals 3

    .line 1334
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->wide_channels_gridview:Landroid/widget/GridView;

    new-instance v1, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$lpB8xXNdyCLi3BxfhkwuVJaSwQg;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$lpB8xXNdyCLi3BxfhkwuVJaSwQg;-><init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1350
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->wide_channels_gridview:Landroid/widget/GridView;

    new-instance v1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$3;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$3;-><init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1378
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->wide_channels_gridview:Landroid/widget/GridView;

    new-instance v1, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$nqRTRYfV_Z9YtS6K0YGeWeCurG4;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$nqRTRYfV_Z9YtS6K0YGeWeCurG4;-><init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1399
    new-instance v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;

    invoke-static {}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getAllCategoriesObjects()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;-><init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;Landroid/content/Context;Ljava/util/List;)V

    .line 1400
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->side_bar:Landroid/widget/ListView;

    new-instance v2, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$9e2HL4rg0itrO1tor87aVADtgSo;

    invoke-direct {v2, p0, v0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$9e2HL4rg0itrO1tor87aVADtgSo;-><init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1411
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->side_bar:Landroid/widget/ListView;

    new-instance v2, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$TaptAJTK83_TEvJpCfu8qIdagQQ;

    invoke-direct {v2, p0, v0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$TaptAJTK83_TEvJpCfu8qIdagQQ;-><init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1432
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->side_bar:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1433
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;->getCategoryList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;->getCategoryList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->setAppropriateSideBar(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private setOnClickListeners()V
    .locals 2

    const v0, 0x7f0b04fc

    .line 954
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$QXovdcb9TYbDrg5leBoxyaeIDx4;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$QXovdcb9TYbDrg5leBoxyaeIDx4;-><init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b04fb

    .line 955
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$hZxh2jFaIJN-IQgzRKXTqVjx95o;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$hZxh2jFaIJN-IQgzRKXTqVjx95o;-><init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b04fa

    .line 956
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$ayCGlkTTeRLPnz0N3kH3Q47XcJ8;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$ayCGlkTTeRLPnz0N3kH3Q47XcJ8;-><init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0143

    .line 957
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$4kkt8hbKS_CcTBrPLZN85-OHzY8;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$4kkt8hbKS_CcTBrPLZN85-OHzY8;-><init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0240

    .line 959
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$iU7a5lcSQz9f7tdniNiN3B23HMk;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$iU7a5lcSQz9f7tdniNiN3B23HMk;-><init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b023f

    .line 960
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$nVh79OYr_USl4703lYSGhlrL7P0;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$nVh79OYr_USl4703lYSGhlrL7P0;-><init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0246

    .line 961
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$ACrw1ycDiTYJaHIUZbMfGWYDdwM;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$ACrw1ycDiTYJaHIUZbMfGWYDdwM;-><init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0243

    .line 962
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$h3-F_SE8f5XnT9jatg-2yrOCL04;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$h3-F_SE8f5XnT9jatg-2yrOCL04;-><init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0353

    .line 964
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$ZNwyUn28FaeWBOqmFj7O_cIv9Vc;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$ZNwyUn28FaeWBOqmFj7O_cIv9Vc;-><init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b035c

    .line 965
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$7-UJ0U3yPqYIPZGaUpWkus5EwYs;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$7-UJ0U3yPqYIPZGaUpWkus5EwYs;-><init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0352

    .line 966
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$QnBxUVwo_YvVQcOt3RxymNoNxkY;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$QnBxUVwo_YvVQcOt3RxymNoNxkY;-><init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0355

    .line 967
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$bl-ysNswGFWQLNlaLOB-pDDJYK0;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$bl-ysNswGFWQLNlaLOB-pDDJYK0;-><init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b015a

    .line 969
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$iR_mc1q2OkqRtgmhpIvjXjIwfDM;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$iR_mc1q2OkqRtgmhpIvjXjIwfDM;-><init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0163

    .line 970
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$3EPf1NjR1eve4i9IzU2XpkGDMaM;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$3EPf1NjR1eve4i9IzU2XpkGDMaM;-><init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b015b

    .line 971
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$QqdEs-o89ahvXAnBbP0qcQxFP0o;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$QqdEs-o89ahvXAnBbP0qcQxFP0o;-><init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0290

    .line 973
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$o594H7nYnQLHis67yxR-1Odjn5U;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$o594H7nYnQLHis67yxR-1Odjn5U;-><init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0291

    .line 974
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$vdngkwtuB3tnSfPpd5BSWqONqOg;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$vdngkwtuB3tnSfPpd5BSWqONqOg;-><init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0292

    .line 975
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$n0vpVOm05SYKa6CVcGRpMf0zb68;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$n0vpVOm05SYKa6CVcGRpMf0zb68;-><init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b028f

    .line 976
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$qEmeSsRlohOBvE0G8SHeziVhY3o;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$qEmeSsRlohOBvE0G8SHeziVhY3o;-><init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static setPlayOnPauseActivity(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playOnPauseActivity"
        }
    .end annotation

    .line 1458
    sput-boolean p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playOnActivityPaused:Z

    return-void
.end method

.method private setupChannelMenuMobile()V
    .locals 3

    const v0, 0x7f0b02d9

    .line 1046
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->genre:Landroid/widget/ImageView;

    const/4 v1, 0x0

    .line 1047
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1049
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 1050
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->new_channel_carousel:Landroidx/leanback/widget/HorizontalGridView;

    invoke-virtual {v2, v0}, Landroidx/leanback/widget/HorizontalGridView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1051
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->new_channel_carousel:Landroidx/leanback/widget/HorizontalGridView;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/HorizontalGridView;->setHasFixedSize(Z)V

    .line 1053
    new-instance v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;

    invoke-static {}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getAllCategoriesObjects()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;-><init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;Landroid/content/Context;Ljava/util/List;)V

    .line 1054
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->configureGenreList(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;)V

    .line 1055
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->genre:Landroid/widget/ImageView;

    new-instance v2, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$aty8J68Hm8CYtXqfm9Zb-2InWDw;

    invoke-direct {v2, p0, v0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$aty8J68Hm8CYtXqfm9Zb-2InWDw;-><init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private switchChannelWithNumberControl()V
    .locals 4

    .line 1193
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->swithChannelWithNumber:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1194
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->swithChannelWithNumber:Ljava/lang/Runnable;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private switchChannelWithSwipe(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    .line 1031
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1032
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getCurrentPlayingChannel()Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1034
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getCurrentPlayingChannel()Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object p1

    iget p1, p1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->channel_number:I

    iget v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->current_category_id:I

    iget-boolean v2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->is_adult_content:Z

    invoke-static {p1, v1, v0, v2}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getNextChannel(IIZZ)Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object p1

    const-string v0, "swipe_left"

    .line 1035
    sput-object v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->accessWay:Ljava/lang/String;

    .line 1036
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playChannel(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 1038
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getCurrentPlayingChannel()Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object p1

    iget p1, p1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->channel_number:I

    iget v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->current_category_id:I

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->is_adult_content:Z

    invoke-static {p1, v0, v1, v2}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getNextChannel(IIZZ)Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object p1

    const-string v0, "swipe_right"

    .line 1039
    sput-object v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->accessWay:Ljava/lang/String;

    .line 1040
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playChannel(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private toggleChannelCarousel(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "show"
        }
    .end annotation

    .line 1503
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->new_channel_carousel:Landroidx/leanback/widget/HorizontalGridView;

    invoke-virtual {v0}, Landroidx/leanback/widget/HorizontalGridView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1504
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->new_channel_carousel:Landroidx/leanback/widget/HorizontalGridView;

    invoke-virtual {p1}, Landroidx/leanback/widget/HorizontalGridView;->requestFocus()Z

    goto/16 :goto_1

    :cond_0
    const-string v0, "channelCarousel"

    if-nez p1, :cond_3

    .line 1506
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->new_channel_carousel:Landroidx/leanback/widget/HorizontalGridView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroidx/leanback/widget/HorizontalGridView;->setVisibility(I)V

    .line 1507
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->genresList:Landroid/widget/ListView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/ListView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "GenresList"

    .line 1508
    sput-object p1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    goto :goto_0

    .line 1509
    :cond_1
    sget-object p1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "none"

    .line 1510
    sput-object p1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    .line 1511
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->refreshGenreListLayout()V

    goto :goto_1

    .line 1513
    :cond_3
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->channels:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    .line 1514
    iget v2, v1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->id:I

    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->current_playing_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget v3, v3, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->id:I

    if-ne v2, v3, :cond_4

    .line 1515
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->channels:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_5

    .line 1516
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->new_channel_carousel:Landroidx/leanback/widget/HorizontalGridView;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->channels:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/leanback/widget/HorizontalGridView;->setSelectedPosition(I)V

    .line 1521
    :cond_5
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->new_channel_carousel:Landroidx/leanback/widget/HorizontalGridView;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->standart_fade_in_animation:Landroid/view/animation/Animation;

    invoke-static {p1, v1}, Lcom/magoware/magoware/webtv/util/Utils;->setViewVisibleWithAnimation(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 1522
    sput-object v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    .line 1523
    sget-object p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->PES:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 1524
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->new_channel_carousel:Landroidx/leanback/widget/HorizontalGridView;

    invoke-virtual {p1}, Landroidx/leanback/widget/HorizontalGridView;->requestFocus()Z

    .line 1526
    :cond_6
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/magoware/magoware/webtv/players/-$$Lambda$F4n3wdVrPcCL4J2_1P6xL8UYFcE;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$F4n3wdVrPcCL4J2_1P6xL8UYFcE;-><init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method

.method private toggleChannelMenu()V
    .locals 3

    const/4 v0, 0x1

    .line 1132
    sput-boolean v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playOnActivityPaused:Z

    .line 1134
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/magoware/magoware/webtv/players/channelMenu/LiveTvChannelMenuActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x40000000    # 2.0f

    .line 1135
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1136
    iget-boolean v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->is_adult_content:Z

    const-string v2, "isAdult"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1137
    iget v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->current_category_id:I

    const-string v2, "currentCategort"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1138
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateLocale()V
    .locals 4

    .line 252
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/LocaleHelper;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 253
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 255
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 256
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 257
    iput-object v1, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 258
    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-void
.end method


# virtual methods
.method public checkAsFavorite()V
    .locals 4

    .line 1187
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/OsdBox;->checkAsFavorite()V

    .line 1188
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->Dismiss_OSD_display:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1189
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->Dismiss_OSD_display:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected closePlayerActivityAfterSpecificTime(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seconds"
        }
    .end annotation

    .line 1228
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->setClosePlayerPromptDialog()V

    .line 1229
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->ClosePlayerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1230
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->ClosePlayerRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected abstract concatTokenStream(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tokenExtra"
        }
    .end annotation
.end method

.method public configureGenreList(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "category_adapter"
        }
    .end annotation

    const v0, 0x7f0b02dd

    .line 1102
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->genresList:Landroid/widget/ListView;

    .line 1103
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1104
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->genresList:Landroid/widget/ListView;

    new-instance v1, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$-DoRDhumQ64ymzk5D6u1a7B7wmY;

    invoke-direct {v1, p0, p1}, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$-DoRDhumQ64ymzk5D6u1a7B7wmY;-><init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public displayEpg()V
    .locals 4

    const/4 v0, 0x1

    .line 1167
    sput-boolean v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playOnActivityPaused:Z

    .line 1168
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->standart_fade_out_animation:Landroid/view/animation/Animation;

    invoke-static {v0, v1}, Lcom/magoware/magoware/webtv/util/Utils;->setViewGoneWithAnimation(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 1169
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result v0

    const-string v1, "CURRENT_CHANNEL_NUMBER"

    if-nez v0, :cond_1

    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->PES:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1177
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1178
    const-class v2, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v2, 0x40000000    # 2.0f

    .line 1179
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1180
    sget-object v2, Lcom/magoware/magoware/webtv/util/Utils;->CURRENT_CATEGORY_ID:Ljava/lang/String;

    iget v3, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->current_category_id:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1181
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->current_playing_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget v2, v2, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->channel_number:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1182
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1170
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1171
    const-class v2, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v2, 0x20000

    .line 1172
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1173
    sget-object v2, Lcom/magoware/magoware/webtv/util/Utils;->CURRENT_CATEGORY_ID:Ljava/lang/String;

    iget v3, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->current_category_id:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1174
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->current_playing_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget v2, v2, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->channel_number:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1175
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method public displayInfo()V
    .locals 4

    .line 1153
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/players/OsdBox;->description_linear_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1154
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getChannelInfo()V

    .line 1155
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/players/OsdBox;->description_linear_layout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1156
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/players/OsdBox;->info_button:Landroid/widget/Button;

    const v1, 0x7f080280

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 1158
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/players/OsdBox;->info_button:Landroid/widget/Button;

    const v2, 0x7f080288

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1159
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/players/OsdBox;->description_linear_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1160
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/players/OsdBox;->program_description:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1162
    :goto_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->Dismiss_OSD_display:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1163
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->Dismiss_OSD_display:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public doPlayPause()V
    .locals 4

    .line 1234
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->setkTimer(I)V

    const/4 v0, 0x1

    .line 1236
    sput-boolean v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->osdCatchp:Z

    .line 1237
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    iput-boolean v1, v2, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->catchupPressed:Z

    .line 1238
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/players/catchup/EventCatchUp;

    const-string v3, "event"

    invoke-direct {v2, v3}, Lcom/magoware/magoware/webtv/players/catchup/EventCatchUp;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 1239
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->progressDialogCatchup:Landroid/app/ProgressDialog;

    .line 1240
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1241
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->progressDialogCatchup:Landroid/app/ProgressDialog;

    const v2, 0x7f140245

    invoke-virtual {p0, v2}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1242
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->progressDialogCatchup:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1243
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->progressDialogCatchup:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1245
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->getVisibility()I

    move-result v0

    const-string v1, "CatchUp"

    const/16 v2, 0x8

    if-nez v0, :cond_1

    .line 1246
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    invoke-virtual {v0, v2}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->setVisibility(I)V

    .line 1247
    sget-object v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "none"

    .line 1248
    sput-object v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    goto :goto_0

    .line 1250
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    invoke-virtual {v0, v2}, Lcom/magoware/magoware/webtv/players/OsdBox;->setVisibility(I)V

    .line 1251
    sput-object v1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    .line 1252
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->standart_fade_in_animation:Landroid/view/animation/Animation;

    invoke-static {v0, v1}, Lcom/magoware/magoware/webtv/util/Utils;->setViewVisibleWithAnimation(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 1253
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->requestFocus()Z

    .line 1254
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->requestFocusFromTouch()Z

    .line 1255
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->handler3:Landroid/os/Handler;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->Dismiss_OSD_CatchUp:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1256
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->handler3:Landroid/os/Handler;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->Dismiss_OSD_CatchUp:Ljava/lang/Runnable;

    invoke-static {}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->get()Lcom/magoware/magoware/webtv/util/CustomConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->getCatchupDelay()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1258
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->sendLogLiveTVPlayTime()V

    return-void
.end method

.method protected abstract getBandwidth()Ljava/lang/String;
.end method

.method protected abstract getChannel()Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;
.end method

.method protected getCurrentPlayingChannel()Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;
    .locals 1

    .line 776
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->current_playing_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    return-object v0
.end method

.method protected getPreviousPlayingChannel()Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;
    .locals 1

    .line 785
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->previous_playing_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    return-object v0
.end method

.method protected abstract getResolution()Ljava/lang/String;
.end method

.method protected getSurfaceView()Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public goFromEpgToCatchUp()V
    .locals 4

    const/4 v0, 0x0

    .line 1262
    sput-boolean v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->openCatchUp:Z

    .line 1263
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    invoke-virtual {v1, v0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->setkTimer(I)V

    .line 1265
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->clicked_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    if-eqz v0, :cond_0

    .line 1266
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PLAYING_CHANNEL:Ljava/lang/String;

    sget-object v2, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->clicked_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget v2, v2, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->channel_number:I

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 1267
    sput-object v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->clicked_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    .line 1269
    :cond_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PLAYING_CHANNEL:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getChannelByNumber(I)Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->current_playing_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    .line 1270
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    const-string v1, "exo"

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->startLogCatchupTimer(Ljava/lang/String;)V

    .line 1271
    sput-boolean v2, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->osdCatchp:Z

    .line 1272
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    iput-boolean v2, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->catchupPressed:Z

    .line 1273
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    iput-boolean v2, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->fromEPG:Z

    .line 1274
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/players/catchup/EventCatchUp;

    const-string v3, "event"

    invoke-direct {v1, v3}, Lcom/magoware/magoware/webtv/players/catchup/EventCatchUp;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 1275
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->progressDialogCatchup:Landroid/app/ProgressDialog;

    .line 1276
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1277
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->progressDialogCatchup:Landroid/app/ProgressDialog;

    const v1, 0x7f140245

    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1278
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->progressDialogCatchup:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1279
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->progressDialogCatchup:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1281
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->getVisibility()I

    move-result v0

    const-string v1, "CatchUp"

    const/16 v2, 0x8

    if-nez v0, :cond_2

    .line 1282
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    invoke-virtual {v0, v2}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->setVisibility(I)V

    .line 1283
    sget-object v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "none"

    .line 1284
    sput-object v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    goto :goto_0

    .line 1286
    :cond_2
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    invoke-virtual {v0, v2}, Lcom/magoware/magoware/webtv/players/OsdBox;->setVisibility(I)V

    .line 1287
    sput-object v1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    .line 1288
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->standart_fade_in_animation:Landroid/view/animation/Animation;

    invoke-static {v0, v1}, Lcom/magoware/magoware/webtv/util/Utils;->setViewVisibleWithAnimation(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 1289
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->requestFocus()Z

    .line 1290
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->handler3:Landroid/os/Handler;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->Dismiss_OSD_CatchUp:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1291
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->handler3:Landroid/os/Handler;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->Dismiss_OSD_CatchUp:Ljava/lang/Runnable;

    invoke-static {}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->get()Lcom/magoware/magoware/webtv/util/CustomConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->getCatchupDelay()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public hideOSD()V
    .locals 2

    .line 1633
    sget-object v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    const-string v1, "osd"

    invoke-static {v0, v1}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "none"

    .line 1634
    sput-object v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    .line 1636
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->standart_fade_out_animation:Landroid/view/animation/Animation;

    invoke-static {v0, v1}, Lcom/magoware/magoware/webtv/util/Utils;->setViewGoneWithAnimation(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 1637
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->refreshGenreListLayout()V

    return-void
.end method

.method public synthetic lambda$configureGenreList$23$LiveTvPlayerSuperclass(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1105
    sget-object p2, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    const-string p3, "osd"

    invoke-static {p2, p3}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 1106
    invoke-virtual {p0, p3}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->toggleOSD(Z)V

    :cond_0
    const/4 p2, 0x1

    .line 1108
    invoke-direct {p0, p2}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->toggleChannelCarousel(Z)V

    .line 1109
    invoke-virtual {p1, p4}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;->setSelectedIndex(I)V

    .line 1110
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->refreshGenreListLayout()V

    .line 1111
    invoke-virtual {p1, p4}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;->getItem(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    iget p5, p5, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;->id:I

    invoke-direct {p0, p5}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->refreshMenuChannels(I)V

    .line 1112
    invoke-virtual {p1, p4}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    iget p1, p1, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;->id:I

    iput p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->side_bar_category_id:I

    .line 1113
    iput p4, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->side_bar_position:I

    .line 1114
    iput p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->temporary_current_category_id:I

    .line 1115
    iput-boolean p2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->from_GenresOnClick:Z

    .line 1116
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->setupCarousel()V

    .line 1117
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->new_channel_carousel:Landroidx/leanback/widget/HorizontalGridView;

    invoke-virtual {p1, p3}, Landroidx/leanback/widget/HorizontalGridView;->setSelectedPosition(I)V

    return-void
.end method

.method public synthetic lambda$getChannelInfo$26$LiveTvPlayerSuperclass(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 1320
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 1321
    iget-object v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 1322
    :goto_0
    iget-object v1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1323
    iget-object v1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/database/objects/EpgObject;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/database/objects/EpgObject;->description:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_0

    .line 1324
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/players/OsdBox;->program_description:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1328
    :cond_1
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public synthetic lambda$new$33$LiveTvPlayerSuperclass()V
    .locals 4

    .line 2093
    new-instance v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$SwitchChannelWithNumber;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$SwitchChannelWithNumber;-><init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$SwitchChannelWithNumber;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public synthetic lambda$new$34$LiveTvPlayerSuperclass()V
    .locals 4

    .line 2095
    new-instance v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ClosePlayerActivityAfterInActivity;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ClosePlayerActivityAfterInActivity;-><init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ClosePlayerActivityAfterInActivity;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public synthetic lambda$new$35$LiveTvPlayerSuperclass()V
    .locals 4

    .line 2097
    new-instance v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$Dismiss_OSD_CatchUp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$Dismiss_OSD_CatchUp;-><init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$Dismiss_OSD_CatchUp;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public synthetic lambda$new$36$LiveTvPlayerSuperclass()V
    .locals 4

    .line 2099
    new-instance v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$Dismiss_OSD_display;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$Dismiss_OSD_display;-><init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$Dismiss_OSD_display;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public synthetic lambda$playCatchupStream$21$LiveTvPlayerSuperclass(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1012
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 1013
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->get_channel_object:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->getResponse_object()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/database/objects/CatchUpStreamObject;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/database/objects/CatchUpStreamObject;->streamurl:Ljava/lang/String;

    iput-object v1, v0, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->stream_url:Ljava/lang/String;

    .line 1014
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->get_channel_object:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->getResponse_object()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/database/objects/CatchUpStreamObject;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/database/objects/CatchUpStreamObject;->token_url:Ljava/lang/String;

    iput-object v1, v0, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->token_url:Ljava/lang/String;

    .line 1015
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->get_channel_object:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->getResponse_object()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/CatchUpStreamObject;

    iget-boolean p1, p1, Lcom/magoware/magoware/webtv/database/objects/CatchUpStreamObject;->token:Z

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->setToken(Z)V

    .line 1016
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->get_channel_object:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playStream(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$scrollToCertainPosition$32$LiveTvPlayerSuperclass(Ljava/lang/String;)V
    .locals 1

    .line 1565
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->channel_carousel_adapter:Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter;->setFocusOnPosition(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setClosePlayerAlert$25$LiveTvPlayerSuperclass(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x0

    .line 1222
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->close_player:Z

    return-void
.end method

.method public synthetic lambda$setClosePlayerPromptDialog$24$LiveTvPlayerSuperclass(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 1209
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->close_player:Z

    .line 1210
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->close_player_prompt_dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->hide()V

    return-void
.end method

.method public synthetic lambda$setEventListeners$27$LiveTvPlayerSuperclass(Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_1

    .line 1336
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->wide_channels_gridview:Landroid/widget/GridView;

    invoke-virtual {p1}, Landroid/widget/GridView;->getSelectedItemPosition()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->wide_channels_gridview:Landroid/widget/GridView;

    invoke-virtual {p1}, Landroid/widget/GridView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    .line 1337
    iget p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->side_bar_position:I

    const/4 p2, 0x1

    if-lez p1, :cond_0

    .line 1338
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->side_bar:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 1339
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->side_bar:Landroid/widget/ListView;

    iget v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->side_bar_position:I

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1340
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->side_bar:Landroid/widget/ListView;

    iget v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->side_bar_position:I

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 1343
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->side_bar:Landroid/widget/ListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 1344
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->side_bar:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$setEventListeners$28$LiveTvPlayerSuperclass(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1379
    iget p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->side_bar_category_id:I

    iput p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->current_category_id:I

    .line 1380
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->setupCarousel()V

    .line 1381
    sget-object p1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    const-string p2, "channelMenu"

    invoke-static {p1, p2}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "none"

    .line 1382
    sput-object p1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    .line 1384
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->wide_channels_gridview:Landroid/widget/GridView;

    invoke-virtual {p1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/adapters/TwoWayChannelAdapter;

    invoke-virtual {p1, p3}, Lcom/magoware/magoware/webtv/adapters/TwoWayChannelAdapter;->getItem(I)Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object p1

    .line 1385
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getCurrentPlayingChannel()Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object p2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1387
    iget p1, p1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->id:I

    iget p3, p2, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->id:I

    if-eq p1, p3, :cond_1

    const-string p1, "MENU"

    .line 1391
    sput-object p1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->accessWay:Ljava/lang/String;

    .line 1392
    invoke-virtual {p0, p2}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playChannel(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V

    .line 1396
    :cond_1
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->grid_view_menu_layout:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$setEventListeners$29$LiveTvPlayerSuperclass(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1401
    invoke-virtual {p3}, Landroid/view/View;->requestFocus()Z

    if-gtz p4, :cond_0

    const/4 p1, 0x0

    .line 1403
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->refreshMenuChannels(I)V

    .line 1404
    iput p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->side_bar_category_id:I

    goto :goto_0

    .line 1406
    :cond_0
    invoke-virtual {p1, p4}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    iget p2, p2, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;->id:I

    invoke-direct {p0, p2}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->refreshMenuChannels(I)V

    .line 1407
    invoke-virtual {p1, p4}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    iget p1, p1, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;->id:I

    iput p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->side_bar_category_id:I

    .line 1409
    :goto_0
    iput p4, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->side_bar_position:I

    return-void
.end method

.method public synthetic lambda$setEventListeners$30$LiveTvPlayerSuperclass(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 p4, 0x1

    const/4 v0, 0x0

    const/16 v1, 0x17

    if-eq p3, v1, :cond_3

    const/16 v1, 0x42

    if-ne p3, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x16

    if-ne p3, p1, :cond_1

    .line 1425
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->wide_channels_gridview:Landroid/widget/GridView;

    invoke-virtual {p1}, Landroid/widget/GridView;->requestFocus()Z

    return p4

    :cond_1
    const/16 p1, 0x14

    if-ne p3, p1, :cond_2

    .line 1428
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->wide_channels_gridview:Landroid/widget/GridView;

    invoke-virtual {p1}, Landroid/widget/GridView;->clearFocus()V

    :cond_2
    return v0

    .line 1413
    :cond_3
    :goto_0
    check-cast p2, Landroid/widget/ListView;

    .line 1414
    invoke-virtual {p2}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result p2

    .line 1415
    iput p2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->side_bar_position:I

    if-gtz p2, :cond_4

    .line 1417
    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->refreshMenuChannels(I)V

    .line 1418
    iput v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->side_bar_category_id:I

    goto :goto_1

    .line 1420
    :cond_4
    invoke-virtual {p1, p2}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    iget p3, p3, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;->id:I

    invoke-direct {p0, p3}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->refreshMenuChannels(I)V

    .line 1421
    invoke-virtual {p1, p2}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    iget p1, p1, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;->id:I

    iput p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->side_bar_category_id:I

    :goto_1
    return p4
.end method

.method public synthetic lambda$setOnClickListeners$10$LiveTvPlayerSuperclass(Landroid/view/View;)V
    .locals 0

    .line 964
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->displayInfo()V

    return-void
.end method

.method public synthetic lambda$setOnClickListeners$11$LiveTvPlayerSuperclass(Landroid/view/View;)V
    .locals 0

    .line 965
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->displayInfo()V

    return-void
.end method

.method public synthetic lambda$setOnClickListeners$12$LiveTvPlayerSuperclass(Landroid/view/View;)V
    .locals 0

    .line 966
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->displayInfo()V

    return-void
.end method

.method public synthetic lambda$setOnClickListeners$13$LiveTvPlayerSuperclass(Landroid/view/View;)V
    .locals 0

    .line 967
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->displayInfo()V

    return-void
.end method

.method public synthetic lambda$setOnClickListeners$14$LiveTvPlayerSuperclass(Landroid/view/View;)V
    .locals 0

    .line 969
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->toggleChannelMenu1()V

    return-void
.end method

.method public synthetic lambda$setOnClickListeners$15$LiveTvPlayerSuperclass(Landroid/view/View;)V
    .locals 0

    .line 970
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->toggleChannelMenu1()V

    return-void
.end method

.method public synthetic lambda$setOnClickListeners$16$LiveTvPlayerSuperclass(Landroid/view/View;)V
    .locals 0

    .line 971
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->toggleChannelMenu1()V

    return-void
.end method

.method public synthetic lambda$setOnClickListeners$17$LiveTvPlayerSuperclass(Landroid/view/View;)V
    .locals 0

    .line 973
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->checkAsFavorite()V

    return-void
.end method

.method public synthetic lambda$setOnClickListeners$18$LiveTvPlayerSuperclass(Landroid/view/View;)V
    .locals 0

    .line 974
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->checkAsFavorite()V

    return-void
.end method

.method public synthetic lambda$setOnClickListeners$19$LiveTvPlayerSuperclass(Landroid/view/View;)V
    .locals 0

    .line 975
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->checkAsFavorite()V

    return-void
.end method

.method public synthetic lambda$setOnClickListeners$2$LiveTvPlayerSuperclass(Landroid/view/View;)V
    .locals 0

    .line 954
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->doPlayPause()V

    return-void
.end method

.method public synthetic lambda$setOnClickListeners$20$LiveTvPlayerSuperclass(Landroid/view/View;)V
    .locals 0

    .line 976
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->checkAsFavorite()V

    return-void
.end method

.method public synthetic lambda$setOnClickListeners$3$LiveTvPlayerSuperclass(Landroid/view/View;)V
    .locals 0

    .line 955
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->doPlayPause()V

    return-void
.end method

.method public synthetic lambda$setOnClickListeners$4$LiveTvPlayerSuperclass(Landroid/view/View;)V
    .locals 0

    .line 956
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->doPlayPause()V

    return-void
.end method

.method public synthetic lambda$setOnClickListeners$5$LiveTvPlayerSuperclass(Landroid/view/View;)V
    .locals 0

    .line 957
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->doPlayPause()V

    return-void
.end method

.method public synthetic lambda$setOnClickListeners$6$LiveTvPlayerSuperclass(Landroid/view/View;)V
    .locals 0

    .line 959
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->displayEpg()V

    return-void
.end method

.method public synthetic lambda$setOnClickListeners$7$LiveTvPlayerSuperclass(Landroid/view/View;)V
    .locals 0

    .line 960
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->displayEpg()V

    return-void
.end method

.method public synthetic lambda$setOnClickListeners$8$LiveTvPlayerSuperclass(Landroid/view/View;)V
    .locals 0

    .line 961
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->displayEpg()V

    return-void
.end method

.method public synthetic lambda$setOnClickListeners$9$LiveTvPlayerSuperclass(Landroid/view/View;)V
    .locals 0

    .line 962
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->displayEpg()V

    return-void
.end method

.method public synthetic lambda$setTokenUrl$1$LiveTvPlayerSuperclass(Lcom/magoware/magoware/webtv/network/mvvm/models/VodStreamResponse;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 795
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStreamResponse;->getExtraData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->concatTokenStream(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const p1, 0x7f14047b

    const/4 v0, 0x1

    .line 797
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$setupCarousel$31$LiveTvPlayerSuperclass()V
    .locals 2

    .line 1548
    sget v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->CURRENT_CHANNEL_POSITION:I

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->channels:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->title:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->scrollToCertainPosition(ILjava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setupChannelMenuMobile$22$LiveTvPlayerSuperclass(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;Landroid/view/View;)V
    .locals 0

    .line 1056
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openGenreList(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 444
    invoke-super {p0}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onBackPressed()V

    .line 445
    sget-object v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    const-string v1, "none"

    invoke-static {v0, v1}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->closeActivity()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 216
    invoke-super {p0, p1}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onCreate(Landroid/os/Bundle;)V

    .line 217
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->updateLocale()V

    .line 218
    new-instance p1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {p1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {p1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object p1

    .line 219
    invoke-static {p1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 220
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->handler3:Landroid/os/Handler;

    .line 221
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->mainHandler:Landroid/os/Handler;

    .line 222
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catchupHandler:Landroid/os/Handler;

    .line 224
    sget-object p1, Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;->defaultPlayer:Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->isPlayer(Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0e01a1

    .line 225
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->setContentView(I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f0e00a2

    .line 228
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->setContentView(I)V

    const/16 p1, 0x320

    .line 229
    iput p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->CHANGE_CHANNEL_DELAY:I

    .line 231
    :goto_0
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    .line 233
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 235
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->metrics:Landroid/util/DisplayMetrics;

    .line 236
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->metrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 237
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->metrics:Landroid/util/DisplayMetrics;

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->widthPixelScreen:I

    .line 238
    sget p1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v0, 0x14

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->show_new_close_player_dialog:Z

    const-string p1, "none"

    .line 239
    sput-object p1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    .line 241
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->initView()V

    .line 242
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 243
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->setupChannelMenuMobile()V

    .line 245
    :cond_2
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->setOnClickListeners()V

    .line 246
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->loadAnimations()V

    .line 247
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->initializeStateVariables()V

    .line 248
    new-instance p1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;-><init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$1;)V

    new-array v0, v1, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onCurrentChannelChanged(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tvChannelObject"
        }
    .end annotation

    .line 735
    iget p1, p1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->channel_number:I

    invoke-static {p1}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getChannelByNumber(I)Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playChannel(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 434
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->sendLogLiveTVExit()V

    const/4 v0, 0x0

    .line 435
    sput-boolean v0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->defaultOrExo:Z

    .line 436
    invoke-super {p0}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onDestroy()V

    .line 437
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->currentCategoryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 438
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->logPlayHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->logPlayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 439
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->ClosePlayerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDialogDismiss()V
    .locals 1

    .line 729
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->progressDialogCatchup:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 730
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public onEvent(Lcom/magoware/magoware/webtv/players/catchup/HelloWorldEvent1;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 761
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/catchup/HelloWorldEvent1;->getMessage1()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->timeStartCatchup:Ljava/lang/String;

    .line 762
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/catchup/HelloWorldEvent1;->pauseButtonClicked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 764
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->pausePlayer()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 766
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->startAutoPlay:Z

    .line 767
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PLAYING_CHANNEL:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->channelNumber:I

    .line 768
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->handler3:Landroid/os/Handler;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->Dismiss_OSD_CatchUp:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 769
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->handler3:Landroid/os/Handler;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->Dismiss_OSD_CatchUp:Ljava/lang/Runnable;

    invoke-static {}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->get()Lcom/magoware/magoware/webtv/util/CustomConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->getCatchupDelay()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 770
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catchupHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 771
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catchupHandler:Landroid/os/Handler;

    new-instance v0, Lcom/magoware/magoware/webtv/players/-$$Lambda$7Hu8bY8Ceu0oy3rhZLRoj8SXTcg;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$7Hu8bY8Ceu0oy3rhZLRoj8SXTcg;-><init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V

    const-wide/16 v1, 0x5dc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public onEvent(Lcom/magoware/magoware/webtv/players/exoplayer/ChannelClickEvent;)V
    .locals 2
    .annotation runtime Lcom/google/common/eventbus/Subscribe;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 740
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/exoplayer/ChannelClickEvent;->getCategoryId()I

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->current_category_id:I

    const/4 v0, 0x0

    .line 741
    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->toggleChannelCarousel(Z)V

    .line 742
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/exoplayer/ChannelClickEvent;->getChannelNumber()I

    move-result p1

    .line 743
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->channels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget p1, p1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->channel_number:I

    .line 744
    invoke-static {p1}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getChannelByNumber(I)Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object p1

    .line 745
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getCurrentPlayingChannel()Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v0

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 748
    iget v1, p1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->id:I

    iget v0, v0, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->id:I

    if-eq v1, v0, :cond_1

    .line 749
    sget-object v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    const-string v1, "channelCarousel"

    invoke-static {v0, v1}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "none"

    .line 750
    sput-object v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    :cond_0
    const-string v0, "Carousel click"

    .line 753
    sput-object v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->accessWay:Ljava/lang/String;

    .line 754
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playChannel(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V

    :cond_1
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "motionEvent",
            "motionEvent1",
            "velocityX",
            "velocityY"
        }
    .end annotation

    const/4 p3, 0x0

    .line 717
    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    cmpg-float p4, p4, v0

    if-gez p4, :cond_0

    iget p4, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->widthPixelScreen:I

    int-to-float p4, p4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v0, v2

    div-float/2addr p4, v0

    cmpg-float p4, p4, v1

    if-gez p4, :cond_0

    const/4 p1, 0x1

    .line 718
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->switchChannelWithSwipe(I)V

    goto :goto_0

    .line 719
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    cmpl-float p4, p4, v0

    if-lez p4, :cond_1

    iget p4, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->widthPixelScreen:I

    int-to-float p4, p4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr p2, p1

    div-float/2addr p4, p2

    cmpg-float p1, p4, v1

    if-gez p1, :cond_1

    .line 720
    invoke-direct {p0, p3}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->switchChannelWithSwipe(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return p3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    .line 453
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 455
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->handler3:Landroid/os/Handler;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->Dismiss_OSD_CatchUp:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 456
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->handler3:Landroid/os/Handler;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->Dismiss_OSD_CatchUp:Ljava/lang/Runnable;

    invoke-static {}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->get()Lcom/magoware/magoware/webtv/util/CustomConfigs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->getCatchupDelay()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 458
    sget-boolean v1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->osdCatchp:Z

    if-eqz v1, :cond_0

    .line 459
    invoke-direct {p0, p1, p2}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catchupNavigation(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 460
    :cond_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    .line 461
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->genresList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->new_channel_carousel:Landroidx/leanback/widget/HorizontalGridView;

    invoke-virtual {v0}, Landroidx/leanback/widget/HorizontalGridView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 462
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->genresList:Landroid/widget/ListView;

    invoke-virtual {p1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 463
    invoke-direct {p0, v2}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->toggleChannelCarousel(Z)V

    return v4

    .line 465
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_2
    const/4 v1, 0x4

    const-string v5, "GenresList"

    const-string v6, "channelMenu"

    const-string v7, "channelCarousel"

    const-string v8, "none"

    if-ne p1, v1, :cond_e

    .line 467
    sget-object p1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    const-string p2, "OSD"

    invoke-static {p1, p2}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 468
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    invoke-virtual {p1, v3}, Lcom/magoware/magoware/webtv/players/OsdBox;->setVisibility(I)V

    .line 469
    sput-object v8, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    .line 470
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->refreshGenreListLayout()V

    return v4

    .line 472
    :cond_3
    sget-object p1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    invoke-static {p1, v6}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 473
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->toggleChannelMenu()V

    return v4

    .line 475
    :cond_4
    sget-object p1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    invoke-static {p1, v7}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const/high16 p2, 0x3e800000    # 0.25f

    if-eqz p1, :cond_7

    .line 476
    invoke-direct {p0, v2}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->toggleChannelCarousel(Z)V

    .line 477
    sget-object p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YESNET:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 478
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->genresList:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_6

    .line 479
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->genresList:Landroid/widget/ListView;

    invoke-virtual {p1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 480
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->genre:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 481
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->new_channel_carousel:Landroidx/leanback/widget/HorizontalGridView;

    invoke-virtual {p1}, Landroidx/leanback/widget/HorizontalGridView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_5

    .line 482
    sput-object v8, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    goto :goto_0

    .line 484
    :cond_5
    sput-object v7, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    .line 486
    :goto_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->genresList:Landroid/widget/ListView;

    iget p2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->side_bar_position:I

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setSelection(I)V

    :cond_6
    return v4

    .line 490
    :cond_7
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->genresList:Landroid/widget/ListView;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/widget/ListView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_9

    :cond_8
    sget-object p1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    invoke-static {p1, v5}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 491
    :cond_9
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->new_channel_carousel:Landroidx/leanback/widget/HorizontalGridView;

    invoke-virtual {p1}, Landroidx/leanback/widget/HorizontalGridView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_a

    .line 492
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->new_channel_carousel:Landroidx/leanback/widget/HorizontalGridView;

    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->standart_fade_out_animation:Landroid/view/animation/Animation;

    invoke-static {p1, p2}, Lcom/magoware/magoware/webtv/util/Utils;->setViewGoneWithAnimation(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 493
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->new_channel_carousel:Landroidx/leanback/widget/HorizontalGridView;

    invoke-virtual {p1, v3}, Landroidx/leanback/widget/HorizontalGridView;->setVisibility(I)V

    .line 494
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->refreshGenreListLayout()V

    goto :goto_2

    .line 496
    :cond_a
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->genresList:Landroid/widget/ListView;

    invoke-virtual {p1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 497
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->genre:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 498
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->new_channel_carousel:Landroidx/leanback/widget/HorizontalGridView;

    invoke-virtual {p1}, Landroidx/leanback/widget/HorizontalGridView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_b

    .line 499
    sput-object v8, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    goto :goto_1

    .line 501
    :cond_b
    sput-object v7, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    .line 503
    :goto_1
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->genresList:Landroid/widget/ListView;

    iget p2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->side_bar_position:I

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setSelection(I)V

    :goto_2
    return v4

    .line 506
    :cond_c
    sget-object p1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    invoke-static {p1, v8}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 507
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->closeActivity()V

    return v4

    :cond_d
    return v2

    .line 512
    :cond_e
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/players/OsdBox;->getVisibility()I

    move-result v1

    const/16 v9, 0x15

    const/16 v10, 0x16

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/players/OsdBox;->osd_buttons:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_10

    if-eq p1, v10, :cond_f

    if-ne p1, v9, :cond_10

    .line 514
    :cond_f
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->Dismiss_OSD_display:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 515
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->Dismiss_OSD_display:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 516
    invoke-super {p0, p1, p2}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_10
    const/16 v1, 0x17

    const-string v11, "osd"

    if-eq p1, v1, :cond_24

    const/16 v1, 0x42

    if-ne p1, v1, :cond_11

    goto/16 :goto_5

    :cond_11
    const/16 v1, 0x13

    if-eq p1, v1, :cond_20

    const/16 v1, 0x5c

    if-ne p1, v1, :cond_12

    .line 523
    sget-object v1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    .line 524
    invoke-static {v1, v6}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_4

    :cond_12
    const/16 v1, 0x14

    if-eq p1, v1, :cond_1b

    const/16 v1, 0x5d

    if-ne p1, v1, :cond_13

    goto :goto_3

    :cond_13
    const/16 v1, 0x52

    if-ne p1, v1, :cond_14

    .line 569
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    invoke-virtual {p1, v3}, Lcom/magoware/magoware/webtv/players/OsdBox;->setVisibility(I)V

    .line 570
    invoke-direct {p0, v2}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->toggleChannelCarousel(Z)V

    .line 571
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    invoke-virtual {p1, v3}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->setVisibility(I)V

    .line 572
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->toggleChannelMenu()V

    return v4

    :cond_14
    const/16 v1, 0x8e

    if-ne p1, v1, :cond_15

    .line 575
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->displayEpg()V

    return v4

    :cond_15
    if-eq p1, v9, :cond_16

    if-ne p1, v10, :cond_19

    .line 577
    :cond_16
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->rootView:Landroid/view/View;

    if-eq v0, v1, :cond_17

    if-eqz v0, :cond_17

    .line 578
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getSurfaceView()Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;

    move-result-object v1

    if-ne v0, v1, :cond_19

    :cond_17
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->grid_view_menu_layout:Landroid/widget/LinearLayout;

    .line 579
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_19

    .line 580
    sget-object p1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    invoke-static {p1, v11}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 581
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    invoke-virtual {p1, v3}, Lcom/magoware/magoware/webtv/players/OsdBox;->setVisibility(I)V

    .line 582
    sput-object v8, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    .line 584
    :cond_18
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->refreshGenreListLayout()V

    .line 585
    invoke-direct {p0, v4}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->toggleChannelCarousel(Z)V

    return v4

    :cond_19
    const/16 v0, 0x54

    if-ne p1, v0, :cond_1a

    .line 589
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->toggleChannelMenu()V

    .line 593
    invoke-super {p0, p1, p2}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 591
    :cond_1a
    invoke-direct {p0, p1, p2}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->onNumberClicked(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 543
    :cond_1b
    :goto_3
    sget-object v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 544
    sget-object v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 545
    sput-object v8, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    .line 547
    :cond_1c
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getCurrentPlayingChannel()Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v0

    iget v0, v0, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->channel_number:I

    iget v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->current_category_id:I

    iget-boolean v3, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->is_adult_content:Z

    invoke-static {v0, v1, v2, v3}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getNextChannel(IIZZ)Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 551
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getCurrentPlayingChannel()Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v0

    .line 554
    :cond_1d
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->cancelChannelChangeByNumber()V

    .line 555
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v5, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->last_key_time:J

    sub-long/2addr v1, v5

    iget v3, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->CHANGE_CHANNEL_DELAY:I

    int-to-long v5, v3

    cmp-long v3, v1, v5

    if-gez v3, :cond_1e

    .line 556
    invoke-super {p0, p1, p2}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 558
    :cond_1e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->last_key_time:J

    const-string p1, "KEYCODE_DPAD_DOWN"

    .line 560
    sput-object p1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->accessWay:Ljava/lang/String;

    .line 561
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getCurrentPlayingChannel()Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object p1

    iget p1, p1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->channel_number:I

    if-eq p1, v4, :cond_1f

    .line 562
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playChannel(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V

    :cond_1f
    return v4

    .line 525
    :cond_20
    :goto_4
    sget-object v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 526
    sput-object v8, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    .line 527
    :cond_21
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getCurrentPlayingChannel()Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v0

    iget v0, v0, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->channel_number:I

    iget v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->current_category_id:I

    iget-boolean v2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->is_adult_content:Z

    invoke-static {v0, v1, v4, v2}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getNextChannel(IIZZ)Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v0

    if-nez v0, :cond_22

    .line 530
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getCurrentPlayingChannel()Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v0

    .line 533
    :cond_22
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->cancelChannelChangeByNumber()V

    .line 534
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v5, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->last_key_time:J

    sub-long/2addr v1, v5

    iget v3, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->CHANGE_CHANNEL_DELAY:I

    int-to-long v5, v3

    cmp-long v3, v1, v5

    if-gez v3, :cond_23

    .line 535
    invoke-super {p0, p1, p2}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 537
    :cond_23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->last_key_time:J

    const-string p1, "KEYCODE_DPAD_UP"

    .line 539
    sput-object p1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->accessWay:Ljava/lang/String;

    .line 540
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playChannel(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V

    return v4

    .line 518
    :cond_24
    :goto_5
    sget-object p1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    invoke-static {p1, v8}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_25

    sget-object p1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    invoke-static {p1, v11}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_25

    sget-object p1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    .line 519
    invoke-static {p1, v5}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 520
    :cond_25
    invoke-virtual {p0, v4}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->toggleOSD(Z)V

    :cond_26
    return v4
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 699
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 700
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/OsdBox;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 701
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->standart_fade_out_animation:Landroid/view/animation/Animation;

    invoke-static {p1, v1}, Lcom/magoware/magoware/webtv/util/Utils;->setViewGoneWithAnimation(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 702
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->setupCarousel()V

    .line 703
    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->toggleChannelCarousel(Z)V

    .line 706
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->getVisibility()I

    move-result p1

    const/16 v1, 0x8

    if-ne p1, v1, :cond_3

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 707
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->genresList:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getVisibility()I

    move-result p1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->genresList:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getVisibility()I

    move-result p1

    if-ne p1, v1, :cond_2

    .line 708
    :cond_1
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->setupCarousel()V

    .line 709
    :cond_2
    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->toggleChannelCarousel(Z)V

    .line 710
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->refreshGenreListLayout()V

    :cond_3
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 598
    invoke-super {p0, p1}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 599
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->releasePlayer()V

    const/4 v0, 0x1

    .line 600
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->startAutoPlay:Z

    .line 601
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 413
    invoke-super {p0}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onPause()V

    .line 414
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isSmartTv()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isBox()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 415
    :cond_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/TopicSubscriber;->getInstance()Lcom/magoware/magoware/webtv/util/TopicSubscriber;

    move-result-object v0

    const-string v1, "live_tv"

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/util/TopicSubscriber;->unsubscribeFrom(Ljava/lang/String;)V

    .line 416
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    const/4 v0, 0x1

    .line 418
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->activity_paused:Z

    .line 420
    sget-boolean v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playOnActivityPaused:Z

    if-nez v0, :cond_2

    .line 421
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->releasePlayer()V

    :cond_2
    return-void
.end method

.method public onPlayerOpened(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channel"
        }
    .end annotation

    .line 803
    iget-object v0, p1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->pin_protected:Ljava/lang/String;

    const-string v1, "true"

    invoke-static {v0, v1}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->adult_zone:Z

    if-nez v0, :cond_0

    .line 804
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->adult_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    .line 805
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->adult_channel_to_play:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    .line 806
    sget-object v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->accessWay:Ljava/lang/String;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->adult_channel_access_way:Ljava/lang/String;

    goto :goto_0

    .line 808
    :cond_0
    iget-object v0, p1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->pin_protected:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->adult_zone:Z

    .line 812
    :goto_0
    sget-boolean v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->osdCatchp:Z

    const/4 v2, 0x1

    const-string v3, ""

    const/4 v4, 0x0

    if-eqz v0, :cond_6

    .line 813
    sget-object v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    const-string v5, "channelCarousel"

    invoke-static {v0, v5}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 814
    invoke-direct {p0, v4}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->toggleChannelCarousel(Z)V

    .line 816
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Lcom/magoware/magoware/webtv/players/OsdBox;->setVisibility(I)V

    .line 818
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    invoke-virtual {v0, v5}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->setVisibility(I)V

    .line 819
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->genresList:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 820
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->genresList:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 821
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->new_channel_carousel:Landroidx/leanback/widget/HorizontalGridView;

    invoke-virtual {v0, v5}, Landroidx/leanback/widget/HorizontalGridView;->setVisibility(I)V

    const-string v0, "none"

    .line 822
    sput-object v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    .line 824
    :cond_2
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v5, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PLAYING_CHANNEL_Icon_Number:Ljava/lang/String;

    iget v6, p1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->channel_number:I

    invoke-virtual {v0, v5, v6}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;I)V

    .line 825
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getCurrentPlayingChannel()Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->setPreviousPlayingChannel(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V

    .line 826
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->setCurrentPlayingChannel(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V

    .line 827
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v5, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->LAST_CHANNEL_VIEWED:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->channel_number:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->pin:Ljava/lang/String;

    sget-object v5, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_entered:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_entered:Ljava/lang/String;

    if-ne v0, v3, :cond_5

    :cond_3
    iget-object v0, p1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->pin_protected:Ljava/lang/String;

    .line 830
    invoke-static {v0, v1}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->pin_protected:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->adult_zone:Z

    if-nez p1, :cond_5

    .line 831
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 832
    invoke-direct {p0, v4}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->toggleChannelCarousel(Z)V

    .line 833
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->checkPassword()V

    goto :goto_1

    .line 835
    :cond_4
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->showPasswordPromptDialog()V

    .line 837
    :goto_1
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->onPlayerOpenedOsd()V

    goto :goto_2

    :cond_5
    const-string p1, "OSD"

    .line 839
    sput-object p1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    .line 840
    sput-boolean v4, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->osdCatchp:Z

    .line 841
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->onPlayerOpenedOsd()V

    return v2

    .line 845
    :cond_6
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->current_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    if-eqz v0, :cond_7

    iget v0, v0, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->id:I

    iget v5, p1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->id:I

    if-ne v0, v5, :cond_7

    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->adult_zone:Z

    if-eqz v0, :cond_9

    .line 846
    :cond_7
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->pin:Ljava/lang/String;

    sget-object v5, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_entered:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_entered:Ljava/lang/String;

    if-ne v0, v3, :cond_a

    :cond_8
    iget-object v0, p1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->pin_protected:Ljava/lang/String;

    .line 847
    invoke-static {v0, v1}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->pin_protected:Ljava/lang/String;

    .line 848
    invoke-static {p1, v1}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->adult_zone:Z

    if-nez p1, :cond_a

    :cond_9
    :goto_2
    return v4

    :cond_a
    return v2
.end method

.method public onPlayerOpenedOsd()V
    .locals 3

    .line 858
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ACTIVITY_TIMEOUT:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    add-int/lit16 v0, v0, -0x7530

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->closePlayerActivityAfterSpecificTime(I)V

    .line 860
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->setupCarousel()V

    .line 861
    sget-object v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    const-string v1, "none"

    invoke-static {v0, v1}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    const-string v1, "osd"

    invoke-static {v0, v1}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 863
    :cond_0
    invoke-virtual {p0, v2}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->toggleOSD(Z)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 6

    .line 270
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isSmartTv()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isBox()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    :cond_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/TopicSubscriber;->getInstance()Lcom/magoware/magoware/webtv/util/TopicSubscriber;

    move-result-object v0

    const-string v1, "live_tv"

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/util/TopicSubscriber;->subscribeTo(Ljava/lang/String;)V

    .line 272
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "BROADCAST_FCM_NOTIFICATION"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_1
    const/4 v0, 0x1

    .line 274
    sput-boolean v0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->defaultOrExo:Z

    const/4 v1, 0x0

    .line 275
    sput-boolean v1, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->fromEPGactivity:Z

    .line 276
    sput-boolean v1, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->fromInfo:Z

    .line 277
    sput-boolean v1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playOnActivityPaused:Z

    .line 278
    iput-boolean v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->activity_paused:Z

    .line 280
    sget-boolean v2, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->openCatchUp:Z

    if-nez v2, :cond_15

    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v2

    sget-object v3, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->RUNNING_ACTIVITY:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v5, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;

    .line 281
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "CATCHUP"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 280
    invoke-static {v2, v3}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_0

    .line 284
    :cond_2
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getCurrentPlayingChannel()Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v2

    const-string v3, "exit"

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getCurrentPlayingChannel()Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v2

    iget-object v2, v2, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->pin_protected:Ljava/lang/String;

    const-string v5, "true"

    invoke-static {v2, v5}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 285
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v2

    sget-object v5, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->RUNNING_ACTIVITY:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v5, Lcom/magoware/magoware/webtv/players/PasswordActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 286
    :cond_3
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v2

    sget-object v5, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->RUNNING_ACTIVITY:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v5, Lcom/magoware/magoware/webtv/players/PasswordActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_entered:Ljava/lang/String;

    .line 287
    invoke-static {v2, v3}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getPreviousPlayingChannel()Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 288
    :cond_5
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getCurrentPlayingChannel()Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getPreviousPlayingChannel()Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getCurrentPlayingChannel()Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v2

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getPreviousPlayingChannel()Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v5

    if-ne v2, v5, :cond_7

    .line 289
    :cond_6
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v2

    sget-object v5, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->RUNNING_ACTIVITY:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v5, Lcom/magoware/magoware/webtv/players/channelMenu/LiveTvChannelMenuActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 290
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v2

    sget-object v5, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->RUNNING_ACTIVITY:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v5, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 291
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->onStop()V

    .line 292
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->finish()V

    return-void

    .line 295
    :cond_7
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getPreviousPlayingChannel()Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v2

    if-nez v2, :cond_8

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getCurrentPlayingChannel()Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 296
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v2

    sget-object v5, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->RUNNING_ACTIVITY:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v5, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v0, "BAD"

    .line 297
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 298
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->onStop()V

    .line 299
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->finish()V

    return-void

    .line 302
    :cond_8
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v2

    sget-object v5, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->RUNNING_ACTIVITY:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v5, Lcom/magoware/magoware/webtv/players/PasswordActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 303
    sget-object v2, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_entered:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 304
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->pin:Ljava/lang/String;

    sget-object v3, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_entered:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v2, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_entered:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 305
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->adult_zone:Z

    .line 308
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->adult_channel_to_play:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    if-eqz v0, :cond_9

    const-string v2, "adult_channel_access_way"

    .line 310
    sput-object v2, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->accessWay:Ljava/lang/String;

    .line 311
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playChannel(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V

    :cond_9
    const v0, 0x7f140314

    .line 313
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 315
    :cond_a
    sget-object v2, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_entered:Ljava/lang/String;

    const-string v3, "previous"

    invoke-static {v2, v3}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 316
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getCurrentPlayingChannel()Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v0

    iget v0, v0, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->channel_number:I

    iget v2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->current_category_id:I

    iget-boolean v3, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->is_adult_content:Z

    invoke-static {v0, v2, v1, v3}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getNextChannel(IIZZ)Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v0

    if-nez v0, :cond_b

    .line 318
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getCurrentPlayingChannel()Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v0

    :cond_b
    const-string v2, "KEYCODE_DPAD_DOWN"

    .line 323
    sput-object v2, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->accessWay:Ljava/lang/String;

    .line 324
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playChannel(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V

    goto/16 :goto_1

    .line 325
    :cond_c
    sget-object v2, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_entered:Ljava/lang/String;

    const-string v3, "next"

    invoke-static {v2, v3}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 326
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getCurrentPlayingChannel()Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 327
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getCurrentPlayingChannel()Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v2

    iget v2, v2, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->channel_number:I

    iget v3, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->current_category_id:I

    iget-boolean v4, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->is_adult_content:Z

    invoke-static {v2, v3, v0, v4}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getNextChannel(IIZZ)Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v0

    if-nez v0, :cond_d

    .line 329
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getCurrentPlayingChannel()Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v0

    :cond_d
    const-string v2, "KEYCODE_DPAD_UP"

    .line 334
    sput-object v2, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->accessWay:Ljava/lang/String;

    .line 335
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playChannel(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V

    goto/16 :goto_1

    :cond_e
    const v0, 0x7f140316

    .line 339
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 340
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 341
    const-class v2, Lcom/magoware/magoware/webtv/players/PasswordActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 342
    sget-object v2, Lcom/magoware/magoware/webtv/util/Utils;->PASSWORD_DIALOG_TITLE:Ljava/lang/String;

    const v3, 0x7f14030e

    invoke-virtual {p0, v3}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 346
    :cond_f
    sget-object v0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_entered:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 347
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getPreviousPlayingChannel()Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->setCurrentPlayingChannel(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V

    goto/16 :goto_1

    .line 349
    :cond_10
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v2

    sget-object v3, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->RUNNING_ACTIVITY:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/magoware/magoware/webtv/players/channelMenu/LiveTvChannelMenuActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 350
    sget v0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->clicked_channel:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_16

    .line 351
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getCurrentPlayingChannel()Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v0

    .line 352
    sget v3, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->clicked_channel:I

    invoke-static {v3}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getChannelByNumber(I)Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v3

    .line 353
    sput v2, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->clicked_channel:I

    if-eqz v0, :cond_16

    if-eqz v3, :cond_16

    .line 355
    iget v0, v0, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->id:I

    iget v2, v3, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->id:I

    if-eq v0, v2, :cond_16

    .line 358
    iget v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->current_category_id:I

    if-eqz v0, :cond_11

    const/16 v2, 0x29a

    if-eq v0, v2, :cond_11

    iget-object v2, v3, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->genre_id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eq v0, v2, :cond_11

    .line 359
    iput v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->current_category_id:I

    .line 361
    :cond_11
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->setupCarousel()V

    const-string v0, "Channel_menu"

    .line 362
    sput-object v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->accessWay:Ljava/lang/String;

    .line 363
    invoke-virtual {p0, v3}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playChannel(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V

    goto/16 :goto_1

    .line 369
    :cond_12
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v2

    sget-object v3, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->RUNNING_ACTIVITY:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const-string v3, "EPG_CLICK"

    if-eqz v2, :cond_14

    .line 370
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getCurrentPlayingChannel()Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v0

    .line 371
    sget-object v2, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->clicked_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    if-eqz v2, :cond_13

    .line 372
    iget v2, v0, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->channel_number:I

    sget-object v4, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->clicked_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget v4, v4, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->channel_number:I

    if-eq v2, v4, :cond_13

    if-eqz v0, :cond_13

    .line 377
    sput-object v3, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->accessWay:Ljava/lang/String;

    .line 378
    sget-object v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->clicked_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playChannel(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V

    :cond_13
    const/4 v0, 0x0

    .line 382
    sput-object v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->clicked_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    goto :goto_1

    .line 383
    :cond_14
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v2

    sget-object v5, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->RUNNING_ACTIVITY:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v4, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 384
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getCurrentPlayingChannel()Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v2

    iget v2, v2, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->channel_number:I

    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v4

    sget-object v5, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PLAYING_CHANNEL:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eq v2, v4, :cond_16

    .line 385
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v2

    sget-object v4, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PLAYING_CHANNEL:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getChannelByNumber(I)Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 386
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v2

    sget-object v4, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PLAYING_CHANNEL:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getChannelByNumber(I)Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v0

    .line 388
    sput-object v3, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->accessWay:Ljava/lang/String;

    .line 389
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playChannel(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V

    goto :goto_1

    .line 282
    :cond_15
    :goto_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->goFromEpgToCatchUp()V

    .line 394
    :cond_16
    :goto_1
    invoke-super {p0}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onResume()V

    .line 397
    sget-boolean v0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->fromGcminfoactivity:Z

    if-eqz v0, :cond_18

    .line 398
    sput-boolean v1, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->fromGcminfoactivity:Z

    .line 400
    sget v0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->channel_to_be_played:I

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getCurrentPlayingChannel()Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v2

    iget v2, v2, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->channel_number:I

    if-eq v0, v2, :cond_18

    sget v0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->channel_to_be_played:I

    invoke-static {v0}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getChannelByNumber(I)Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 401
    iget v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->current_category_id:I

    if-eqz v0, :cond_17

    sget v2, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->channel_to_be_played:I

    invoke-static {v2}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getChannelByNumber(I)Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v2

    iget-object v2, v2, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->genre_id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eq v0, v2, :cond_17

    .line 402
    iput v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->current_category_id:I

    .line 403
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->setupCarousel()V

    :cond_17
    const-string v0, "fromGCM"

    .line 405
    sput-object v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->accessWay:Ljava/lang/String;

    .line 406
    sget v0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->channel_to_be_played:I

    invoke-static {v0}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getChannelByNumber(I)Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playChannel(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V

    :cond_18
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outState"
        }
    .end annotation

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "e1",
            "e2",
            "distanceX",
            "distanceY"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    return-void
.end method

.method public onSingleTapUp()V
    .locals 7

    .line 627
    sget-object v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    const-string v1, "none"

    invoke-static {v0, v1}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v2, "channelCarousel"

    const/4 v3, 0x1

    const/16 v4, 0x8

    if-nez v0, :cond_3

    sget-object v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    const-string v5, "osd"

    invoke-static {v0, v5}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    const-string v5, "GenresList"

    .line 628
    invoke-static {v0, v5}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    const-string v5, "catchup"

    invoke-static {v0, v5}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    .line 629
    invoke-static {v0, v2}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YESNET:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 680
    :cond_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->genresList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->new_channel_carousel:Landroidx/leanback/widget/HorizontalGridView;

    invoke-virtual {v0}, Landroidx/leanback/widget/HorizontalGridView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 681
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->genresList:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 682
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->new_channel_carousel:Landroidx/leanback/widget/HorizontalGridView;

    invoke-virtual {v0, v4}, Landroidx/leanback/widget/HorizontalGridView;->setVisibility(I)V

    .line 683
    invoke-virtual {p0, v3}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->toggleOSD(Z)V

    goto/16 :goto_3

    .line 684
    :cond_1
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->new_channel_carousel:Landroidx/leanback/widget/HorizontalGridView;

    invoke-virtual {v0}, Landroidx/leanback/widget/HorizontalGridView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 685
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->genresList:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 686
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->new_channel_carousel:Landroidx/leanback/widget/HorizontalGridView;

    invoke-virtual {v0, v4}, Landroidx/leanback/widget/HorizontalGridView;->setVisibility(I)V

    goto/16 :goto_3

    .line 687
    :cond_2
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->new_channel_carousel:Landroidx/leanback/widget/HorizontalGridView;

    invoke-virtual {v0}, Landroidx/leanback/widget/HorizontalGridView;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_b

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/OsdBox;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_b

    .line 688
    invoke-virtual {p0, v3}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->toggleOSD(Z)V

    goto/16 :goto_3

    .line 630
    :cond_3
    :goto_0
    sget-boolean v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->osdCatchp:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_6

    .line 631
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->genresList:Landroid/widget/ListView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->new_channel_carousel:Landroidx/leanback/widget/HorizontalGridView;

    invoke-virtual {v0}, Landroidx/leanback/widget/HorizontalGridView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_b

    .line 632
    :cond_4
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->updatetv()V

    .line 633
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->standart_fade_in_animation:Landroid/view/animation/Animation;

    invoke-static {v0, v1}, Lcom/magoware/magoware/webtv/util/Utils;->setViewVisibleWithAnimation(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 634
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->genresList:Landroid/widget/ListView;

    if-eqz v0, :cond_5

    .line 635
    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 636
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->genresList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->slide_right_left_animation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 637
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->slide_right_left_animation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$1;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$1;-><init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 654
    :cond_5
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->requestFocus()Z

    goto/16 :goto_3

    .line 656
    :cond_6
    sget-boolean v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->osdCatchp:Z

    if-nez v0, :cond_b

    .line 657
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YESNET:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->genresList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->new_channel_carousel:Landroidx/leanback/widget/HorizontalGridView;

    invoke-virtual {v0}, Landroidx/leanback/widget/HorizontalGridView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    .line 658
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->new_channel_carousel:Landroidx/leanback/widget/HorizontalGridView;

    invoke-virtual {v0, v4}, Landroidx/leanback/widget/HorizontalGridView;->setVisibility(I)V

    .line 659
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->genresList:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 660
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->genre:Landroid/widget/ImageView;

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 661
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->new_channel_carousel:Landroidx/leanback/widget/HorizontalGridView;

    invoke-virtual {v0}, Landroidx/leanback/widget/HorizontalGridView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_7

    .line 662
    sput-object v1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    goto :goto_1

    .line 664
    :cond_7
    sput-object v2, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    .line 666
    :goto_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->genresList:Landroid/widget/ListView;

    iget v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->side_bar_position:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_3

    .line 668
    :cond_8
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/OsdBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    .line 669
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/players/OsdBox;->osd_buttons:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_9

    .line 670
    invoke-virtual {p0, v3}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->toggleOSD(Z)V

    goto :goto_2

    .line 672
    :cond_9
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/magoware/magoware/webtv/players/-$$Lambda$F4n3wdVrPcCL4J2_1P6xL8UYFcE;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$F4n3wdVrPcCL4J2_1P6xL8UYFcE;-><init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V

    const-wide/16 v5, 0xc8

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 673
    :goto_2
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    sget-object v1, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$2UuaoQ9T34xkmSY_ywBEggcYvVI;->INSTANCE:Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$2UuaoQ9T34xkmSY_ywBEggcYvVI;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/players/OsdBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 675
    :cond_a
    invoke-virtual {p0, v3}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->toggleOSD(Z)V

    .line 676
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->genresList:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 677
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->new_channel_carousel:Landroidx/leanback/widget/HorizontalGridView;

    invoke-virtual {v0, v4}, Landroidx/leanback/widget/HorizontalGridView;->setVisibility(I)V

    :cond_b
    :goto_3
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 263
    invoke-super {p0}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onStart()V

    .line 264
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 265
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->currentCategoryReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "channel-category-update"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 427
    invoke-super {p0}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onStop()V

    .line 428
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 429
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->releasePlayer()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "me"
        }
    .end annotation

    .line 612
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->gDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onViewClickedPassword(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1462
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->passwordPromptDialog:Lcom/magoware/magoware/webtv/players/PasswordPromptDialog;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/players/PasswordPromptDialog;->nxt_channel:Landroid/widget/ImageView;

    const-string v1, "0"

    if-ne p1, v0, :cond_1

    .line 1464
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object v0, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->LAST_CHANNEL_VIEWED:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->current_category_id:I

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->is_adult_content:Z

    .line 1463
    invoke-static {p1, v0, v1, v2}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getNextChannel(IIZZ)Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1466
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getCurrentPlayingChannel()Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object p1

    :cond_0
    const-string v0, "password_prompt_next_channel"

    .line 1471
    sput-object v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->accessWay:Ljava/lang/String;

    .line 1472
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playChannel(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V

    goto :goto_0

    .line 1473
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->passwordPromptDialog:Lcom/magoware/magoware/webtv/players/PasswordPromptDialog;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/players/PasswordPromptDialog;->prev_channel:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_3

    .line 1475
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object v0, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->LAST_CHANNEL_VIEWED:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->current_category_id:I

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->is_adult_content:Z

    .line 1474
    invoke-static {p1, v0, v1, v2}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getNextChannel(IIZZ)Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object p1

    if-nez p1, :cond_2

    .line 1477
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getCurrentPlayingChannel()Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object p1

    :cond_2
    const-string v0, "password_prompt_prev_channel"

    .line 1482
    sput-object v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->accessWay:Ljava/lang/String;

    .line 1483
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playChannel(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V

    goto :goto_0

    .line 1484
    :cond_3
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->passwordPromptDialog:Lcom/magoware/magoware/webtv/players/PasswordPromptDialog;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/players/PasswordPromptDialog;->enter_button:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 1485
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    const-string v0, "Live"

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1486
    new-instance p1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$CheckPassword;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$CheckPassword;-><init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$1;)V

    const-string v0, ""

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$CheckPassword;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_4
    if-nez p1, :cond_5

    .line 1488
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->onStop()V

    .line 1489
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->finish()V

    :cond_5
    :goto_0
    return-void
.end method

.method public openGenreList(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "category_adapter"
        }
    .end annotation

    .line 1061
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->genresList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    const-string v1, "GenresList"

    const/16 v2, 0x8

    if-ne v0, v2, :cond_3

    .line 1062
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    invoke-virtual {v0, v2}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->setVisibility(I)V

    .line 1063
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    invoke-virtual {v0, v2}, Lcom/magoware/magoware/webtv/players/OsdBox;->setVisibility(I)V

    .line 1064
    sput-object v1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    .line 1065
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->new_channel_carousel:Landroidx/leanback/widget/HorizontalGridView;

    invoke-virtual {v0}, Landroidx/leanback/widget/HorizontalGridView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1066
    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->toggleChannelCarousel(Z)V

    .line 1068
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->genresList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->slide_left_right_animation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1069
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->genresList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1070
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->refreshGenreListLayout()V

    .line 1071
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1072
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->genre:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1073
    :cond_1
    iget v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->side_bar_position:I

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;->setSelectedIndex(I)V

    .line 1074
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->genresList:Landroid/widget/ListView;

    iget v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->side_bar_position:I

    if-eqz v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 1076
    :cond_3
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->genresList:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->slide_right_left_animation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1077
    sget-object p1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "none"

    .line 1078
    sput-object p1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    .line 1080
    :cond_4
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->new_channel_carousel:Landroidx/leanback/widget/HorizontalGridView;

    invoke-virtual {p1}, Landroidx/leanback/widget/HorizontalGridView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "channelCarousel"

    .line 1081
    sput-object p1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    .line 1083
    :cond_5
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->slide_right_left_animation:Landroid/view/animation/Animation;

    new-instance v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$2;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$2;-><init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :goto_0
    return-void
.end method

.method protected abstract openPlayer()V
.end method

.method public pausePlayer()V
    .locals 1

    .line 1731
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getSurfaceView()Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1732
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getSurfaceView()Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->pause()V

    :cond_0
    return-void
.end method

.method protected playCatchupStream()V
    .locals 8

    const/4 v0, 0x1

    .line 990
    sput-boolean v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->isCatchupStream:Z

    .line 991
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v1

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PLAYING_CHANNEL:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getChannelByNumber(I)Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->get_channel_object:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    .line 993
    invoke-static {}, Lcom/magoware/magoware/webtv/util/NetworkUtils;->get()Lcom/magoware/magoware/webtv/util/NetworkUtils;

    move-result-object v0

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/magoware/magoware/webtv/util/Utils;->getAuth(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/util/NetworkUtils;->httpRequestParameters(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 994
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->current_playing_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget v2, v2, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->channel_number:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "channelNumber"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->timeStartCatchup:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "timestart"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->startCatchupLoadTimer()V

    .line 998
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->getChangeMethod()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 999
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    const-string v2, "touch/air mouse"

    invoke-virtual {v1, v2}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->setChangeMethod(Ljava/lang/String;)V

    .line 1001
    :cond_0
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->getChangeMethod()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    .line 1002
    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->getChannelName()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    .line 1004
    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->getHelperVar()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->getProgramName(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->timeStart:Ljava/lang/String;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    .line 1006
    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->getHelperVar()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->getProgramId(I)Ljava/lang/String;

    move-result-object v7

    const-string v4, "visualon"

    .line 1001
    invoke-static/range {v2 .. v7}, Lcom/magoware/magoware/webtv/network/SendAnalyticsLogs;->logCatchupChangeTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->setChangeMethod(Ljava/lang/String;)V

    .line 1010
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v1, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getCatchupStreamData(Ljava/util/HashMap;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$vd3OLuKM4PjDy_FhAVICYAkYmsY;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$vd3OLuKM4PjDy_FhAVICYAkYmsY;-><init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public playChannel(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channel"
        }
    .end annotation

    const/4 v0, 0x0

    .line 876
    sput-boolean v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->isCatchupStream:Z

    const/4 v1, 0x0

    .line 877
    iput-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->current_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    .line 878
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/players/OsdBox;->description_linear_layout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 879
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/players/OsdBox;->info_button:Landroid/widget/Button;

    const v3, 0x7f080288

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 880
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/players/OsdBox;->program_description:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 881
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/players/OsdBox;->program_description:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setScrollY(I)V

    .line 883
    sget-object v1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->accessWay:Ljava/lang/String;

    const-string v4, "NUMBERS"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->current_category_id:I

    if-eqz v1, :cond_2

    iget-object v4, p1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->genre_id:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v1, v4, :cond_2

    .line 884
    iput v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->current_category_id:I

    .line 888
    iget-boolean v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->is_adult_content:Z

    invoke-static {v1}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getAllObjectChannels(Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 889
    iput-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->channels:Ljava/util/ArrayList;

    .line 890
    new-instance v4, Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter;

    iget-boolean v5, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->endlessScroll:Z

    iget v6, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->current_category_id:I

    invoke-direct {v4, p0, v1, v5, v6}, Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ZI)V

    iput-object v4, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->channel_carousel_adapter:Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter;

    const/4 v1, 0x0

    .line 892
    :goto_0
    iget-object v4, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->channels:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 893
    iget-object v4, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->channels:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget v4, v4, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->channel_number:I

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getCurrentPlayingChannel()Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v5

    iget v5, v5, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->channel_number:I

    if-ne v4, v5, :cond_0

    .line 894
    iget-object v4, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->channel_carousel_adapter:Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter;

    invoke-virtual {v4, v1}, Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter;->setSelectedPosition(I)V

    .line 895
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->new_channel_carousel:Landroidx/leanback/widget/HorizontalGridView;

    invoke-virtual {v1}, Landroidx/leanback/widget/HorizontalGridView;->requestLayout()V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 899
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->new_channel_carousel:Landroidx/leanback/widget/HorizontalGridView;

    iget-object v4, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->channel_carousel_adapter:Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter;

    invoke-virtual {v1, v4}, Landroidx/leanback/widget/HorizontalGridView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 902
    :cond_2
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    iget-object v4, p1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->title:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/magoware/magoware/webtv/players/OsdBox;->setLogChannel(Ljava/lang/String;)V

    .line 903
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getCurrentPlayingChannel()Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 904
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getCurrentPlayingChannel()Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v1

    iput-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->current_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    .line 906
    :cond_3
    sget-boolean v1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->osdCatchp:Z

    const-string v4, "none"

    if-nez v1, :cond_a

    .line 907
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/magoware/magoware/webtv/players/OsdBox;->setFromCall(Z)V

    .line 908
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->current_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    if-eqz v1, :cond_4

    iget v1, v1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->id:I

    iget v5, p1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->id:I

    if-ne v1, v5, :cond_4

    iget-boolean v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->adult_zone:Z

    if-eqz v1, :cond_a

    .line 909
    :cond_4
    sget-object v1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    const-string v5, "channelCarousel"

    invoke-static {v1, v5}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 910
    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->toggleChannelCarousel(Z)V

    .line 912
    :cond_5
    sget-object v1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->accessWay:Ljava/lang/String;

    const-string v5, "KEYCODE_DPAD_UP"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->accessWay:Ljava/lang/String;

    const-string v5, "KEYCODE_DPAD_DOWN"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 913
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    invoke-virtual {v1, v2}, Lcom/magoware/magoware/webtv/players/OsdBox;->setVisibility(I)V

    .line 916
    :cond_6
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    invoke-virtual {v1, v2}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->setVisibility(I)V

    .line 917
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->genresList:Landroid/widget/ListView;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/widget/ListView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_7

    .line 918
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->genresList:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 919
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->new_channel_carousel:Landroidx/leanback/widget/HorizontalGridView;

    invoke-virtual {v1, v2}, Landroidx/leanback/widget/HorizontalGridView;->setVisibility(I)V

    .line 920
    sput-object v4, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    .line 922
    :cond_7
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v1

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PLAYING_CHANNEL_Icon_Number:Ljava/lang/String;

    iget v5, p1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->channel_number:I

    invoke-virtual {v1, v2, v5}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;I)V

    .line 923
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getCurrentPlayingChannel()Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->setPreviousPlayingChannel(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V

    .line 924
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->setCurrentPlayingChannel(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V

    .line 925
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v1

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->LAST_CHANNEL_VIEWED:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->channel_number:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->pin:Ljava/lang/String;

    sget-object v2, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_entered:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_entered:Ljava/lang/String;

    if-ne v1, v3, :cond_9

    :cond_8
    iget-object v1, p1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->pin_protected:Ljava/lang/String;

    const-string v2, "true"

    .line 927
    invoke-static {v1, v2}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->pin_protected:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->adult_zone:Z

    if-nez v1, :cond_9

    .line 928
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->showPasswordPromptDialog()V

    .line 930
    :cond_9
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v1

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ACTIVITY_TIMEOUT:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInt(Ljava/lang/String;I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    add-int/lit16 v1, v1, -0x7530

    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->closePlayerActivityAfterSpecificTime(I)V

    .line 933
    :cond_a
    sget-object v1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    sget-object v1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    const-string v2, "osd"

    invoke-static {v1, v2}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 934
    :cond_b
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->toggleOSD(Z)V

    .line 937
    :cond_c
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playStream(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V

    return-void
.end method

.method protected abstract playStream(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channel"
        }
    .end annotation
.end method

.method protected abstract releasePlayer()V
.end method

.method public replayStream()V
    .locals 1

    .line 1737
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getSurfaceView()Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1738
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getSurfaceView()Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->resume()V

    :cond_0
    return-void
.end method

.method public selectChannelCarousel(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channel"
        }
    .end annotation

    .line 868
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->LAST_CHANNEL_VIEWED_NAME:Ljava/lang/String;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->new_channel_carousel:Landroidx/leanback/widget/HorizontalGridView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->channel_carousel_adapter:Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter;

    if-eqz v0, :cond_0

    .line 871
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter;->getSelectedPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/HorizontalGridView;->setSelectedPosition(I)V

    :cond_0
    return-void
.end method

.method public sendChannelChangeLog()V
    .locals 14

    .line 1665
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->channelStartupTime:J

    sub-long v10, v0, v2

    .line 1666
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getPreviousPlayingChannel()Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getPreviousPlayingChannel()Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v0

    iget-object v0, v0, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->title:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "no data"

    :goto_0
    move-object v5, v0

    .line 1668
    sget-object v4, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->accessWay:Ljava/lang/String;

    .line 1671
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getCurrentPlayingChannel()Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v0

    iget-object v6, v0, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->title:Ljava/lang/String;

    .line 1672
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getPlayer()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    .line 1673
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/OsdBox;->getCurrentProgram()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    .line 1674
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/OsdBox;->getCurrentProgramId()I

    move-result v9

    .line 1676
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getResolution()Ljava/lang/String;

    move-result-object v12

    .line 1677
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getBandwidth()Ljava/lang/String;

    move-result-object v13

    .line 1668
    invoke-static/range {v4 .. v13}, Lcom/magoware/magoware/webtv/network/SendAnalyticsLogs;->logChannelChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendLogChannelError(Ljava/lang/String;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "description",
            "errorCode"
        }
    .end annotation

    .line 1687
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getCategory()Ljava/lang/String;

    move-result-object v0

    .line 1690
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getPlayer()Ljava/lang/String;

    move-result-object v3

    .line 1691
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getChannel()Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v1

    iget-object v4, v1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->title:Ljava/lang/String;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    .line 1692
    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/players/OsdBox;->getCurrentProgram()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    .line 1693
    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/players/OsdBox;->getCurrentProgramId()I

    move-result v6

    .line 1694
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getResolution()Ljava/lang/String;

    move-result-object v7

    .line 1695
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getBandwidth()Ljava/lang/String;

    move-result-object v8

    move-object v1, p1

    move v2, p2

    .line 1686
    invoke-static/range {v0 .. v8}, Lcom/magoware/magoware/webtv/network/SendAnalyticsLogs;->logChannelError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendLogLiveChannelLoadingTime()V
    .locals 13

    .line 1651
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->channelLoadTime:J

    sub-long v7, v0, v2

    .line 1654
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getCategory()Ljava/lang/String;

    move-result-object v4

    .line 1655
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getChannel()Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v0

    iget-object v5, v0, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->title:Ljava/lang/String;

    .line 1656
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getPlayer()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    .line 1658
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/OsdBox;->getCurrentProgram()Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    .line 1659
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/OsdBox;->getCurrentProgramId()I

    move-result v10

    .line 1660
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getResolution()Ljava/lang/String;

    move-result-object v11

    .line 1661
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getBandwidth()Ljava/lang/String;

    move-result-object v12

    .line 1653
    invoke-static/range {v4 .. v12}, Lcom/magoware/magoware/webtv/network/SendAnalyticsLogs;->logChannelLoadingTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendLogLiveTVExit()V
    .locals 4

    .line 1718
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->channelStartupTime:J

    sub-long/2addr v0, v2

    .line 1719
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getChannel()Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v2

    iget-object v2, v2, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/players/OsdBox;->getCurrentProgramId()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/magoware/magoware/webtv/network/SendAnalyticsLogs;->logExitLiveTv(JLjava/lang/String;I)V

    return-void
.end method

.method public sendLogLiveTVPlayTime()V
    .locals 2

    .line 1681
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->logPlayHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->logPlayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1682
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->logPlayHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->logPlayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAccessWay(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "accessWay"
        }
    .end annotation

    .line 1641
    sput-object p1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->accessWay:Ljava/lang/String;

    return-void
.end method

.method public setClosePlayerAlert()V
    .locals 3

    .line 1218
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f150002

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f1400dd

    .line 1219
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1400dc

    .line 1220
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f140083

    .line 1221
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$ll-haTAyI4-bSSS--CkVt0IgJhw;

    invoke-direct {v2, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$ll-haTAyI4-bSSS--CkVt0IgJhw;-><init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 1223
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 1224
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->close_player_alert:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public setClosePlayerPromptDialog()V
    .locals 3

    .line 1198
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->show_new_close_player_dialog:Z

    if-nez v0, :cond_0

    .line 1199
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f150158

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->close_player_prompt_dialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    .line 1200
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1201
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->close_player_prompt_dialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 1202
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->close_player_prompt_dialog:Landroid/app/Dialog;

    const v2, 0x7f0e0072

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 1203
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->close_player_prompt_dialog:Landroid/app/Dialog;

    const v2, 0x7f0b070d

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->ok_btn:Landroid/widget/Button;

    .line 1204
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->close_player_prompt_dialog:Landroid/app/Dialog;

    const v2, 0x7f0b0180

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->close_player_message:Landroid/widget/TextView;

    .line 1205
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->ok_btn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 1206
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->ok_btn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 1207
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->close_player_message:Landroid/widget/TextView;

    const v1, 0x7f1400dd

    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1208
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->ok_btn:Landroid/widget/Button;

    new-instance v1, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$dG3Zm1Bl98uVM4gb7nm0QFox5iM;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$dG3Zm1Bl98uVM4gb7nm0QFox5iM;-><init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1213
    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->setClosePlayerAlert()V

    :goto_0
    return-void
.end method

.method protected setCurrentPlayingChannel(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "current_playing_channel"
        }
    .end annotation

    .line 780
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->current_playing_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    .line 781
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/players/OsdBox;->setCurrent_playing_channel(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V

    return-void
.end method

.method protected setPreviousPlayingChannel(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "previous_playing_channel"
        }
    .end annotation

    .line 789
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->previous_playing_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    return-void
.end method

.method public setTokenUrl(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channel"
        }
    .end annotation

    .line 793
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->token_url:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getStreamToken(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$QgdPMAkYe6SaTBG-zoN7rGNhMWc;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$QgdPMAkYe6SaTBG-zoN7rGNhMWc;-><init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public setupCarousel()V
    .locals 5

    .line 1531
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->from_GenresOnClick:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1532
    iput-boolean v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->from_GenresOnClick:Z

    .line 1533
    iget v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->temporary_current_category_id:I

    if-nez v0, :cond_0

    .line 1534
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->is_adult_content:Z

    invoke-static {v0}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getAllObjectChannels(Z)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 1535
    :cond_0
    iget-boolean v2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->is_adult_content:Z

    invoke-static {v0, v2}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getAllObjectChannels(IZ)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->channels:Ljava/util/ArrayList;

    .line 1536
    new-instance v2, Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter;

    iget-boolean v3, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->endlessScroll:Z

    iget v4, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->temporary_current_category_id:I

    invoke-direct {v2, p0, v0, v3, v4}, Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ZI)V

    iput-object v2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->channel_carousel_adapter:Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter;

    const/4 v0, -0x1

    .line 1537
    sput v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->CURRENT_CHANNEL_POSITION:I

    goto :goto_2

    .line 1539
    :cond_1
    iget v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->current_category_id:I

    if-nez v0, :cond_2

    .line 1540
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->is_adult_content:Z

    invoke-static {v0}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getAllObjectChannels(Z)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_1

    .line 1541
    :cond_2
    iget-boolean v2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->is_adult_content:Z

    invoke-static {v0, v2}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getAllObjectChannels(IZ)Ljava/util/ArrayList;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->channels:Ljava/util/ArrayList;

    .line 1542
    new-instance v2, Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter;

    iget-boolean v3, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->endlessScroll:Z

    iget v4, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->current_category_id:I

    invoke-direct {v2, p0, v0, v3, v4}, Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ZI)V

    iput-object v2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->channel_carousel_adapter:Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter;

    .line 1544
    :goto_2
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->channels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 1545
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->channels:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget v0, v0, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->channel_number:I

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->current_playing_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget v2, v2, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->channel_number:I

    if-ne v0, v2, :cond_3

    .line 1546
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->new_channel_carousel:Landroidx/leanback/widget/HorizontalGridView;

    invoke-virtual {v0}, Landroidx/leanback/widget/HorizontalGridView;->requestLayout()V

    .line 1547
    sput v1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->CURRENT_CHANNEL_POSITION:I

    .line 1548
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->new_channel_carousel:Landroidx/leanback/widget/HorizontalGridView;

    new-instance v1, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$cqSRORKnddkK17LbB2zW1TbAmZ8;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$cqSRORKnddkK17LbB2zW1TbAmZ8;-><init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroidx/leanback/widget/HorizontalGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1552
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->new_channel_carousel:Landroidx/leanback/widget/HorizontalGridView;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->channel_carousel_adapter:Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/HorizontalGridView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method protected showPasswordPromptDialog()V
    .locals 3

    const/4 v0, 0x1

    .line 1448
    invoke-static {v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->setPlayOnPauseActivity(Z)V

    const/4 v0, 0x0

    .line 1449
    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->toggleChannelCarousel(Z)V

    .line 1450
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "Some Title"

    .line 1451
    invoke-static {v1}, Lcom/magoware/magoware/webtv/players/PasswordPromptDialog;->newInstance(Ljava/lang/String;)Lcom/magoware/magoware/webtv/players/PasswordPromptDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->passwordPromptDialog:Lcom/magoware/magoware/webtv/players/PasswordPromptDialog;

    .line 1452
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getPreviousPlayingChannel()Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/magoware/magoware/webtv/players/PasswordPromptDialog;->setPreviousChannel(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V

    .line 1453
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->passwordPromptDialog:Lcom/magoware/magoware/webtv/players/PasswordPromptDialog;

    invoke-virtual {v1, p0}, Lcom/magoware/magoware/webtv/players/PasswordPromptDialog;->setCurrentChannelListener(Lcom/magoware/magoware/webtv/players/PasswordPromptDialog$CurrentChannelListener;)V

    .line 1454
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->passwordPromptDialog:Lcom/magoware/magoware/webtv/players/PasswordPromptDialog;

    const-string v2, "fragment_edit_name"

    invoke-virtual {v1, v0, v2}, Lcom/magoware/magoware/webtv/players/PasswordPromptDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method protected stopPlayBack()V
    .locals 0

    return-void
.end method

.method public toggleChannelMenu1()V
    .locals 3

    const/4 v0, 0x1

    .line 1143
    sput-boolean v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playOnActivityPaused:Z

    .line 1144
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/players/OsdBox;->setVisibility(I)V

    .line 1145
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/magoware/magoware/webtv/players/channelMenu/LiveTvChannelMenuActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x40000000    # 2.0f

    .line 1146
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1147
    iget-boolean v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->is_adult_content:Z

    const-string v2, "isAdult"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1148
    iget v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->current_category_id:I

    const-string v2, "currentCategort"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1149
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public toggleOSD(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "with_osd_buttons"
        }
    .end annotation

    .line 1608
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->showTraditionalOsd:Z

    if-eqz v0, :cond_4

    .line 1609
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/OsdBox;->getVisibility()I

    move-result v0

    const-wide/16 v1, 0x2710

    const-string v3, "OSD"

    const/4 v4, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/OsdBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1616
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/OsdBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->accessWay:Ljava/lang/String;

    const-string v5, "KEYCODE_DPAD_UP"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->accessWay:Ljava/lang/String;

    const-string v5, "KEYCODE_DPAD_DOWN"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1617
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/players/OsdBox;->setupOsdData(Z)V

    .line 1618
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    invoke-virtual {p1, v4}, Lcom/magoware/magoware/webtv/players/OsdBox;->setVisibility(I)V

    .line 1619
    sput-object v3, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    .line 1620
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->mainHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->Dismiss_OSD_display:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1621
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->mainHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->Dismiss_OSD_display:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 1623
    :cond_2
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/players/OsdBox;->setVisibility(I)V

    .line 1624
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->refreshGenreListLayout()V

    const-string p1, "none"

    .line 1625
    sput-object p1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    goto :goto_1

    .line 1610
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/players/OsdBox;->setupOsdData(Z)V

    .line 1611
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    invoke-virtual {p1, v4}, Lcom/magoware/magoware/webtv/players/OsdBox;->setVisibility(I)V

    .line 1613
    sput-object v3, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    .line 1614
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->mainHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->Dismiss_OSD_display:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1615
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->mainHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->Dismiss_OSD_display:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_1
    return-void
.end method
