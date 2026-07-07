.class public Lcom/nettv/livestore/activities/LiveChannelActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "LiveChannelActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/activities/LiveChannelActivity$PlayerEventListener;
    }
.end annotation


# instance fields
.field public btn_catch_up:Landroid/widget/Button;

.field public btn_fav:Landroid/widget/Button;

.field public btn_search:Landroid/widget/Button;

.field public categoryModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/CategoryModel;",
            ">;"
        }
    .end annotation
.end field

.field public categoryName:Ljava/lang/String;

.field public category_pos:I

.field public channelAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;

.field public channel_image:Landroid/widget/ImageView;

.field public channel_name:Ljava/lang/String;

.field public channel_pos:I

.field public content_url:Ljava/lang/String;

.field public dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field public epgAdapter:Lcom/nettv/livestore/adapter/EpgRecyclerAdapter;

.field public epgChannels:Lio/realm/RealmResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmResults<",
            "Lcom/nettv/livestore/models/EPGChannel;",
            ">;"
        }
    .end annotation
.end field

.field public epgEventList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/CatchUpEpg;",
            ">;"
        }
    .end annotation
.end field

.field public epgTicker:Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;

.field public epgTime:I

.field public error_count:I

.field public et_search:Landroid/widget/EditText;

.field public focusStatus:Lcom/nettv/livestore/apps/FocusStatus;

.field public handler:Landroid/os/Handler;

.field public hideInfoTicker:Lcom/nettv/livestore/activities/LiveChannelActivity$$ExternalSyntheticLambda2;

.field public hide_time:I

.field public image_audio:Landroid/widget/ImageButton;

.field public image_def:Landroid/widget/ImageView;

.field public image_epg:Landroid/widget/ImageButton;

.field public image_fav:Landroid/widget/ImageButton;

.field public image_lock:Landroid/widget/ImageButton;

.field public image_search:Landroid/widget/ImageButton;

.field public image_series:Landroid/widget/ImageButton;

.field public image_subtitle:Landroid/widget/ImageButton;

.field public image_vod:Landroid/widget/ImageButton;

.field public is_full:Z

.field public key:Ljava/lang/String;

.field public keySelChannel:Lcom/nettv/livestore/models/EPGChannel;

.field public lockDlgFragment:Lcom/nettv/livestore/dlgfragment/LockDlgFragment;

.field public ly_actions:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public ly_buttons:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public ly_surface:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public main_lay:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public moveTicker:Lcom/nettv/livestore/activities/LiveChannelActivity$$ExternalSyntheticLambda2;

.field public move_pos:I

.field public move_time:I

.field public player:Lcom/google/android/exoplayer2/ExoPlayer;

.field public playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

.field public pre_channel_pos:I

.field public preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

.field public recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

.field public recycler_epg:Landroidx/recyclerview/widget/RecyclerView;

.field public searchDlgFragment:Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;

.field public seekBar:Landroid/widget/SeekBar;

.field public selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

.field public someActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field public stream_id:Ljava/lang/String;

.field public trackSelectionParameters:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

.field public trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

.field public txt_audio:Landroid/widget/TextView;

.field public txt_bottom_series:Landroid/widget/TextView;

.field public txt_channel_name:Landroid/widget/TextView;

.field public txt_current_program:Landroid/widget/TextView;

.field public txt_current_time:Landroid/widget/TextView;

.field public txt_epg:Landroid/widget/TextView;

.field public txt_fav:Landroid/widget/TextView;

.field public txt_group:Landroid/widget/TextView;

.field public txt_home:Landroid/widget/TextView;

.field public txt_left:Landroid/widget/TextView;

.field public txt_live:Landroid/widget/TextView;

.field public txt_lock:Landroid/widget/TextView;

.field public txt_movie:Landroid/widget/TextView;

.field public txt_name:Landroid/widget/TextView;

.field public txt_next_program:Landroid/widget/TextView;

.field public txt_next_time:Landroid/widget/TextView;

.field public txt_num:Landroid/widget/TextView;

.field public txt_resolution:Landroid/widget/TextView;

.field public txt_right:Landroid/widget/TextView;

.field public txt_search:Landroid/widget/TextView;

.field public txt_series:Landroid/widget/TextView;

.field public txt_subtitle:Landroid/widget/TextView;

.field public txt_vod:Landroid/widget/TextView;

.field public wordModels:Lcom/nettv/livestore/models/WordModels;


# direct methods
.method public static synthetic $r8$lambda$2MwChnZIN81ZWJF1BS9Sio_O4ic(Lcom/nettv/livestore/activities/LiveChannelActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->lambda$mInfoHideTimer$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$E-53r3KYWNYC6R4KyQF_q344FnA(Lcom/nettv/livestore/activities/LiveChannelActivity;Lcom/nettv/livestore/models/EPGChannel;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lkotlin/Unit;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nettv/livestore/activities/LiveChannelActivity;->lambda$onCreate$0(Lcom/nettv/livestore/models/EPGChannel;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$E0pYmS7yseamECocEHLshdSs2Mc(Lcom/nettv/livestore/activities/LiveChannelActivity;Lcom/nettv/livestore/models/EPGChannel;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->lambda$showSearchDlgFragment$1(Lcom/nettv/livestore/models/EPGChannel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ICw0t706KM0SGb5cJzoPy9lM1p0(Lcom/nettv/livestore/activities/LiveChannelActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->lambda$controlLock$5(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$MKLVrmGyAEONEq-8E37x-HbK2oE(Lcom/nettv/livestore/activities/LiveChannelActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->lambda$moveTimer$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$Pz27le4BNqsAM4Krh_5W-Ru_6A4(Lcom/nettv/livestore/activities/LiveChannelActivity;Landroidx/activity/result/ActivityResult;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->lambda$new$8(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QXJCBhhZ2YUAUReyjb5T7rcD4XU(Lcom/nettv/livestore/activities/LiveChannelActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->lambda$controlFav$4(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$aTZBdZpGBHeskj-5EplDAese360(Lcom/nettv/livestore/activities/LiveChannelActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->lambda$epgTimer$3(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hEBQM4G1AsnmK7RYknThT28pv7E(Lcom/nettv/livestore/activities/LiveChannelActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->lambda$playSelectedChannel$2()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/nettv/livestore/activities/LiveChannelActivity;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->category_pos:I

    iput v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    iput v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->pre_channel_pos:I

    iput v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->move_pos:I

    iput v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->error_count:I

    const-string v1, ""

    .line 3
    iput-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->stream_id:Ljava/lang/String;

    iput-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->key:Ljava/lang/String;

    .line 4
    iput-boolean v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->is_full:Z

    .line 5
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->handler:Landroid/os/Handler;

    .line 6
    iput-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->categoryName:Ljava/lang/String;

    .line 7
    sget-object v0, Lcom/nettv/livestore/apps/FocusStatus;->second:Lcom/nettv/livestore/apps/FocusStatus;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->focusStatus:Lcom/nettv/livestore/apps/FocusStatus;

    .line 8
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lcom/nettv/livestore/activities/LiveChannelActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/nettv/livestore/activities/LiveChannelActivity$$ExternalSyntheticLambda1;-><init>(Lcom/nettv/livestore/activities/LiveChannelActivity;)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->someActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public static synthetic access$000(Lcom/nettv/livestore/activities/LiveChannelActivity;Lcom/nettv/livestore/models/EPGChannel;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->playSelectedChannel(Lcom/nettv/livestore/models/EPGChannel;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/nettv/livestore/activities/LiveChannelActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgTimer(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/nettv/livestore/activities/LiveChannelActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->playVideo(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1100(Lcom/nettv/livestore/activities/LiveChannelActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->searchChannelsInCategory(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/nettv/livestore/activities/LiveChannelActivity;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->showEpgInfo(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/nettv/livestore/activities/LiveChannelActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->changeChannelInfo(I)V

    return-void
.end method

.method public static synthetic access$400(Lcom/nettv/livestore/activities/LiveChannelActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->mInfoHideTimer()V

    return-void
.end method

.method public static synthetic access$500(Lcom/nettv/livestore/activities/LiveChannelActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->getShortEpg(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$600(Lcom/nettv/livestore/activities/LiveChannelActivity;Lcom/nettv/livestore/models/EPGChannel;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/nettv/livestore/activities/LiveChannelActivity;->controlLock(Lcom/nettv/livestore/models/EPGChannel;I)V

    return-void
.end method

.method public static synthetic access$700(Lcom/nettv/livestore/activities/LiveChannelActivity;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->showLockImageIcon(Z)V

    return-void
.end method

.method public static synthetic access$900(Lcom/nettv/livestore/activities/LiveChannelActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->releaseMediaPlayer()V

    return-void
.end method

.method private changeChannelInfo(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_group:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->categoryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_channel_name:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgChannels:Lio/realm/RealmResults;

    invoke-virtual {v2, p1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/EPGChannel;->getNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgChannels:Lio/realm/RealmResults;

    invoke-virtual {v2, p1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgChannels:Lio/realm/RealmResults;

    invoke-virtual {v0, p1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getStream_icon()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f08010b

    if-eqz p1, :cond_63

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_63

    .line 5
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 6
    invoke-virtual {v1, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 7
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_image:Landroid/widget/ImageView;

    .line 8
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_7a

    .line 9
    :cond_63
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 11
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_image:Landroid/widget/ImageView;

    .line 12
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :goto_7a
    return-void
.end method

.method private controlFav(Lcom/nettv/livestore/models/EPGChannel;I)V
    .registers 7

    if-eqz p1, :cond_2e

    .line 1
    sget-object v0, Lcom/nettv/livestore/apps/Constants;->xxx_live_categories:Ljava/util/List;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->categoryModels:Ljava/util/List;

    iget v2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->category_pos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 2
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_favorite()Z

    move-result p1

    const/4 v2, 0x1

    xor-int/2addr p1, v2

    new-instance v3, Lcom/nettv/livestore/activities/LiveChannelActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p2, v2}, Lcom/nettv/livestore/activities/LiveChannelActivity$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/activities/LiveChannelActivity;II)V

    invoke-virtual {v0, v1, p1, v3}, Lcom/nettv/livestore/helper/RealmController;->addToFavChannels(Ljava/lang/String;ZLcom/nettv/livestore/helper/RealmChangeItemListener;)V

    :cond_2e
    return-void
.end method

.method private controlLock(Lcom/nettv/livestore/models/EPGChannel;I)V
    .registers 7

    if-eqz p1, :cond_2f

    .line 1
    sget-object v0, Lcom/nettv/livestore/apps/Constants;->xxx_live_categories:Ljava/util/List;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->categoryModels:Ljava/util/List;

    iget v2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->category_pos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 2
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_locked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    new-instance v2, Lcom/nettv/livestore/activities/LiveChannelActivity$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p2, v3}, Lcom/nettv/livestore/activities/LiveChannelActivity$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/activities/LiveChannelActivity;II)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/nettv/livestore/helper/RealmController;->addToLockChannels(Ljava/lang/String;ZLcom/nettv/livestore/helper/RealmChangeItemListener;)V

    :cond_2f
    return-void
.end method

.method private createMediaSourceFactory()Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManagerProvider;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManagerProvider;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/nettv/livestore/utils/DemoUtil;->getHttpDataSourceFactory(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManagerProvider;->setDrmHttpDataSourceFactory(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 4
    new-instance v1, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->setDataSourceFactory(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;

    move-result-object v1

    .line 6
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->setDrmSessionManagerProvider(Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;

    move-result-object v0

    return-object v0
.end method

.method private epgTimer(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgTime:I

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;

    const/16 v1, 0xb

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgTicker:Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;->run()V

    return-void
.end method

.method private findAndShowChannel()V
    .registers 3

    .line 1
    iget v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->move_pos:I

    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/RealmController;->getAllEpgChannelSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_22

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_num:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iput-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->key:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->move_pos:I

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->moveTicker:Lcom/nettv/livestore/activities/LiveChannelActivity$$ExternalSyntheticLambda2;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_33

    .line 6
    :cond_22
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_num:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->moveTicker:Lcom/nettv/livestore/activities/LiveChannelActivity$$ExternalSyntheticLambda2;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->moveTimer()V

    :goto_33
    return-void
.end method

.method private findChannelInfo()V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_2
    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgChannels:Lio/realm/RealmResults;

    invoke-virtual {v2}, Lio/realm/RealmResults;->size()I

    move-result v2

    if-ge v1, v2, :cond_2d

    .line 2
    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgChannels:Lio/realm/RealmResults;

    invoke-virtual {v2, v1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/EPGChannel;->getNum()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget v3, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->move_pos:I

    if-ne v2, v3, :cond_2a

    .line 3
    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgChannels:Lio/realm/RealmResults;

    invoke-virtual {v2, v1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nettv/livestore/models/EPGChannel;

    iput-object v2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->keySelChannel:Lcom/nettv/livestore/models/EPGChannel;

    .line 4
    iput v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5
    :cond_2d
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->keySelChannel:Lcom/nettv/livestore/models/EPGChannel;

    const/16 v2, 0x8

    const-string v3, ""

    if-nez v1, :cond_4f

    .line 6
    iput-object v3, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->key:Ljava/lang/String;

    .line 7
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_num:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_num:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getNo_channels()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_ae

    .line 10
    :cond_4f
    iput-object v3, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->key:Ljava/lang/String;

    .line 11
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_num:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_num:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->keySelChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_id()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->keySelChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/nettv/livestore/activities/LiveChannelActivity;->isAdultChannel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 14
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->keySelChannel:Lcom/nettv/livestore/models/EPGChannel;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/nettv/livestore/activities/LiveChannelActivity;->showChannelLockDlgFragment(Lcom/nettv/livestore/models/EPGChannel;II)V

    goto :goto_ae

    .line 15
    :cond_76
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->keySelChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-direct {p0, v1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->playSelectedChannel(Lcom/nettv/livestore/models/EPGChannel;)V

    .line 16
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    iget v3, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    invoke-virtual {v1, v3}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    .line 17
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgTicker:Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 18
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->stream_id:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->getShortEpg(Ljava/lang/String;)V

    .line 19
    iget v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    invoke-direct {p0, v1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->changeChannelInfo(I)V

    .line 20
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v2, :cond_a4

    iget-boolean v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->is_full:Z

    if-eqz v1, :cond_a4

    .line 21
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 22
    :cond_a4
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->hideInfoTicker:Lcom/nettv/livestore/activities/LiveChannelActivity$$ExternalSyntheticLambda2;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 23
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->mInfoHideTimer()V

    :goto_ae
    return-void
.end method

.method private getRealChannelPosition(Lcom/nettv/livestore/models/EPGChannel;)I
    .registers 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgChannels:Lio/realm/RealmResults;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_27

    .line 3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    return v2

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_27
    return v1
.end method

.method private getShortEpg(Ljava/lang/String;)V
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceServerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nettv/livestore/remote/RetroClass;->getAPIService(Ljava/lang/String;)Lcom/nettv/livestore/remote/APIService;

    move-result-object v0

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceUsername()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferencePassword()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/nettv/livestore/remote/APIService;->get_short_epg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/nettv/livestore/activities/LiveChannelActivity$3;

    invoke-direct {v0, p0}, Lcom/nettv/livestore/activities/LiveChannelActivity$3;-><init>(Lcom/nettv/livestore/activities/LiveChannelActivity;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    goto :goto_27

    :catch_23
    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->showEpgInfo(Ljava/util/List;)V

    :goto_27
    return-void
.end method

.method private goToCatchupActivity()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getNo_epg_avaliable()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_32

    .line 3
    :cond_17
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    if-eqz v0, :cond_32

    .line 4
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->releaseMediaPlayer()V

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nettv/livestore/apps/LTVApp;->channelName:Ljava/lang/String;

    .line 6
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nettv/livestore/activities/CatchUpActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->someActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    :cond_32
    :goto_32
    return-void
.end method

.method private goToSearchActivity()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->releaseMediaPlayer()V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nettv/livestore/activities/SearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "is_live"

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->someActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method private goToSeriesActivity()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->releaseMediaPlayer()V

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "is_changed"

    const-string v2, "series"

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 4
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private goToVodActivity()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->releaseMediaPlayer()V

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "is_changed"

    const-string v2, "movie"

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 4
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private initView()V
    .registers 11

    const v0, 0x7f0b017b

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->main_lay:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b02dd

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    const/4 v1, 0x3

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setResizeMode(I)V

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->getSubtitleView()Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setApplyEmbeddedStyles(Z)V

    .line 5
    new-instance v0, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

    iget-object v3, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v3}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceSubtitleColor()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    iget-object v3, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v3}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceSubtitleBgColor()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;-><init>(IIIIILandroid/graphics/Typeface;)V

    .line 6
    iget-object v3, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->getSubtitleView()Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-result-object v3

    iget-object v4, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v4}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceSubtitleSize()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v1, v4}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setFixedTextSize(IF)V

    .line 7
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->getSubtitleView()Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setStyle(Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;)V

    const v0, 0x7f0b03e8

    .line 8
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_num:Landroid/widget/TextView;

    const v0, 0x7f0b03d9

    .line 9
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_home:Landroid/widget/TextView;

    const v0, 0x7f0b03dc

    .line 10
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_live:Landroid/widget/TextView;

    const v0, 0x7f0b03e2

    .line 11
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_movie:Landroid/widget/TextView;

    const v0, 0x7f0b03f7

    .line 12
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_series:Landroid/widget/TextView;

    const v0, 0x7f0b03e4

    .line 13
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_name:Landroid/widget/TextView;

    const v0, 0x7f0b012d

    .line 14
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->et_search:Landroid/widget/EditText;

    const v0, 0x7f0b02eb

    .line 15
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/view/LiveVerticalGridView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    const v0, 0x7f0b0255

    .line 16
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->ly_surface:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b02ee

    .line 17
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->recycler_epg:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0b008d

    .line 18
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->btn_fav:Landroid/widget/Button;

    const v0, 0x7f0b008a

    .line 19
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->btn_catch_up:Landroid/widget/Button;

    const v0, 0x7f0b009f

    .line 20
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->btn_search:Landroid/widget/Button;

    const v0, 0x7f0b03da

    .line 21
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_left:Landroid/widget/TextView;

    const v0, 0x7f0b03f3

    .line 22
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_right:Landroid/widget/TextView;

    const v0, 0x7f0b03d0

    .line 23
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_epg:Landroid/widget/TextView;

    const v0, 0x7f0b03dd

    .line 24
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_lock:Landroid/widget/TextView;

    const v0, 0x7f0b0403

    .line 25
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_vod:Landroid/widget/TextView;

    const v0, 0x7f0b03f4

    .line 26
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_search:Landroid/widget/TextView;

    const v0, 0x7f0b03bd

    .line 27
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_bottom_series:Landroid/widget/TextView;

    const v0, 0x7f0b03d4

    .line 28
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_fav:Landroid/widget/TextView;

    const v0, 0x7f0b03fc

    .line 29
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_subtitle:Landroid/widget/TextView;

    const v0, 0x7f0b03bb

    .line 30
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_audio:Landroid/widget/TextView;

    .line 31
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_left:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getPrevious_channel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_right:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getNext_channel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_home:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getHome()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_live:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getLive_tv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_movie:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getMovies()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_series:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getSeries()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->btn_catch_up:Landroid/widget/Button;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getCatch_up()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->btn_search:Landroid/widget/Button;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getSearch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->btn_fav:Landroid/widget/Button;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getAdd_to_favorite()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_epg:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getEpg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_lock:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getLock()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_vod:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getMovies()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_search:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getSearch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_bottom_series:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getSeries()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_fav:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getFavorite()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_subtitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getSubtitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_audio:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getAudio_track()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/VerticalGridView;->setNumColumns(I)V

    .line 49
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v2}, Lcom/nettv/livestore/view/LiveVerticalGridView;->setLoop(Z)V

    .line 50
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    new-array v0, v1, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object v1, v0, v2

    .line 51
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    new-instance v2, Lcom/nettv/livestore/activities/LiveChannelActivity$4;

    invoke-direct {v2, v0}, Lcom/nettv/livestore/activities/LiveChannelActivity$4;-><init>([Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroidx/leanback/widget/BaseGridView;->setOnChildViewHolderSelectedListener(Landroidx/leanback/widget/OnChildViewHolderSelectedListener;)V

    const v0, 0x7f0b023d

    .line 52
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b0236

    .line 53
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->ly_buttons:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b0230

    .line 54
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->ly_actions:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b023f

    .line 55
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v0, 0x7f0b0259

    .line 56
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v0, 0x7f0b0250

    .line 57
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v0, 0x7f0b0241

    .line 58
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v0, 0x7f0b024e

    .line 59
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v0, 0x7f0b0253

    .line 60
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v0, 0x7f0b0232

    .line 61
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v0, 0x7f0b0246

    .line 62
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v0, 0x7f0b01d3

    .line 63
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->image_epg:Landroid/widget/ImageButton;

    const v0, 0x7f0b01f0

    .line 64
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->image_vod:Landroid/widget/ImageButton;

    const v0, 0x7f0b01e8

    .line 65
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->image_series:Landroid/widget/ImageButton;

    const v0, 0x7f0b01ea

    .line 66
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->image_subtitle:Landroid/widget/ImageButton;

    const v0, 0x7f0b01c4

    .line 67
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->image_audio:Landroid/widget/ImageButton;

    const v0, 0x7f0b01dc

    .line 68
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->image_lock:Landroid/widget/ImageButton;

    const v0, 0x7f0b01d6

    .line 69
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->image_fav:Landroid/widget/ImageButton;

    const v0, 0x7f0b01e7

    .line 70
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->image_search:Landroid/widget/ImageButton;

    const v0, 0x7f0b0327

    .line 71
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->seekBar:Landroid/widget/SeekBar;

    const v0, 0x7f0b03c9

    .line 72
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_current_time:Landroid/widget/TextView;

    const v0, 0x7f0b03c8

    .line 73
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_current_program:Landroid/widget/TextView;

    const v0, 0x7f0b03e6

    .line 74
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_next_time:Landroid/widget/TextView;

    const v0, 0x7f0b03e5

    .line 75
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_next_program:Landroid/widget/TextView;

    const v0, 0x7f0b03d6

    .line 76
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_group:Landroid/widget/TextView;

    const v0, 0x7f0b03c3

    .line 77
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_channel_name:Landroid/widget/TextView;

    const v0, 0x7f0b03f2

    .line 78
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_resolution:Landroid/widget/TextView;

    const v0, 0x7f0b00ba

    .line 79
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_image:Landroid/widget/ImageView;

    const v0, 0x7f0b01d0

    .line 80
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->image_def:Landroid/widget/ImageView;

    .line 81
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->image_epg:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 82
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->image_vod:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 83
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->image_series:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 84
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->image_fav:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 85
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->image_search:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 86
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->image_subtitle:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 87
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->image_audio:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 88
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->image_lock:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 89
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->image_epg:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->image_vod:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->image_series:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->image_fav:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->image_search:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->image_subtitle:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->image_lock:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_live:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_home:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_series:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_movie:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->btn_fav:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->btn_catch_up:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->btn_search:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->image_audio:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->et_search:Landroid/widget/EditText;

    new-instance v1, Lcom/nettv/livestore/activities/LiveChannelActivity$5;

    invoke-direct {v1, p0}, Lcom/nettv/livestore/activities/LiveChannelActivity$5;-><init>(Lcom/nettv/livestore/activities/LiveChannelActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private isAdultChannel(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v0

    if-eqz v0, :cond_25

    const-string p1, "adult"

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_23

    const-string p1, "xxx"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_23

    const-string p1, "porn"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_23

    :cond_21
    const/4 p1, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 p1, 0x1

    :goto_24
    return p1

    .line 3
    :cond_25
    sget-object p2, Lcom/nettv/livestore/apps/Constants;->xxx_live_categories:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$controlFav$4(I)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->categoryModels:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->category_pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fav_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channelAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_44

    .line 3
    :cond_1c
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object p1

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->categoryModels:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->category_pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CategoryModel;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v1

    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceLiveOrder()I

    move-result v2

    const-string v3, ""

    invoke-virtual {p1, v0, v3, v1, v2}, Lcom/nettv/livestore/helper/RealmController;->getLiveChannelsByCategory(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmResults;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgChannels:Lio/realm/RealmResults;

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channelAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;->updateData(Ljava/util/List;I)V

    .line 5
    :goto_44
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/RealmController;->getFavChannelNames()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceLiveFavChannels(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$controlLock$5(I)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->categoryModels:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->category_pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lock_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channelAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_44

    .line 3
    :cond_1c
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object p1

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->categoryModels:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->category_pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CategoryModel;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v1

    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceLiveOrder()I

    move-result v2

    const-string v3, ""

    invoke-virtual {p1, v0, v3, v1, v2}, Lcom/nettv/livestore/helper/RealmController;->getLiveChannelsByCategory(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmResults;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgChannels:Lio/realm/RealmResults;

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channelAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;->updateData(Ljava/util/List;I)V

    .line 5
    :goto_44
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/RealmController;->getLockChannelNames()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceLiveLockChannels(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$epgTimer$3(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgTime:I

    if-nez v0, :cond_8

    .line 2
    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->getShortEpg(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_8
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->runNextEpgTicker()V

    return-void
.end method

.method private synthetic lambda$mInfoHideTimer$6()V
    .registers 3

    .line 1
    iget v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->hide_time:I

    if-nez v0, :cond_1b

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1b

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    sget-object v0, Lcom/nettv/livestore/apps/FocusStatus;->second:Lcom/nettv/livestore/apps/FocusStatus;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->focusStatus:Lcom/nettv/livestore/apps/FocusStatus;

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->showAndHideActionsButtons(Z)V

    .line 6
    :cond_1b
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->moveNexHideTicker()V

    return-void
.end method

.method private synthetic lambda$moveTimer$7()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->moveTicker:Lcom/nettv/livestore/activities/LiveChannelActivity$$ExternalSyntheticLambda2;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->move_time:I

    if-nez v0, :cond_e

    .line 3
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->findChannelInfo()V

    .line 4
    :cond_e
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->moveNextTicker()V

    return-void
.end method

.method private synthetic lambda$new$8(Landroidx/activity/result/ActivityResult;)V
    .registers 8

    .line 1
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c0

    .line 2
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_c0

    const-string v0, "is_changed"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "from_search"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_ac

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->is_full:Z

    .line 5
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->setFull()V

    .line 6
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceCategoryPos()I

    move-result v1

    iput v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->category_pos:I

    .line 7
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceChannelPos()I

    move-result v1

    iput v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    .line 8
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v1

    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->categoryModels:Ljava/util/List;

    iget v3, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->category_pos:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nettv/livestore/models/CategoryModel;

    iget-object v3, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v3}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v3

    iget-object v4, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v4}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceLiveOrder()I

    move-result v4

    const-string v5, ""

    invoke-virtual {v1, v2, v5, v3, v4}, Lcom/nettv/livestore/helper/RealmController;->getLiveChannelsByCategory(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmResults;

    move-result-object v1

    iput-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgChannels:Lio/realm/RealmResults;

    .line 9
    iget v2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    invoke-virtual {v1}, Lio/realm/RealmResults;->size()I

    move-result v1

    sub-int/2addr v1, p1

    if-le v2, v1, :cond_5f

    .line 10
    iput v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    .line 11
    :cond_5f
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channelAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgChannels:Lio/realm/RealmResults;

    iget v2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    invoke-virtual {p1, v1, v2}, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;->updateData(Ljava/util/List;I)V

    .line 12
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgChannels:Lio/realm/RealmResults;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    invoke-virtual {p1, v1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/EPGChannel;

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    .line 13
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result p1

    if-nez p1, :cond_8d

    .line 14
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgTicker:Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getStream_id()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgTimer(Ljava/lang/String;)V

    goto :goto_91

    :cond_8d
    const/4 p1, 0x0

    .line 16
    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->showEpgInfo(Ljava/util/List;)V

    .line 17
    :goto_91
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_name:Ljava/lang/String;

    .line 18
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_name:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_favorite()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->showFavImageIcon(Z)V

    .line 20
    iget p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->changeChannelInfo(I)V

    .line 21
    :cond_ac
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->playSelectedChannel(Lcom/nettv/livestore/models/EPGChannel;)V

    .line 22
    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->setFocusButtons(Z)V

    .line 23
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 24
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    iget v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    :cond_c0
    return-void
.end method

.method private synthetic lambda$onCreate$0(Lcom/nettv/livestore/models/EPGChannel;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lkotlin/Unit;
    .registers 7

    .line 1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->pre_channel_pos:I

    .line 2
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_a7

    .line 3
    iget-boolean p3, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->is_full:Z

    if-nez p3, :cond_f1

    .line 4
    iget-object p3, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->stream_id:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getStream_id()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_3e

    .line 5
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->categoryModels:Ljava/util/List;

    iget p2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->category_pos:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "resume_id"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_36

    .line 6
    iput p4, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    :cond_36
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->is_full:Z

    .line 8
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->setFull()V

    goto/16 :goto_f1

    .line 9
    :cond_3e
    iget-object p3, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->categoryModels:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->category_pos:I

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {p3}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object p3

    const-string v1, "all_id"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_6b

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_id()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3, v1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->isAdultChannel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_6b

    .line 10
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2, p4}, Lcom/nettv/livestore/activities/LiveChannelActivity;->showChannelLockDlgFragment(Lcom/nettv/livestore/models/EPGChannel;II)V

    goto/16 :goto_f1

    .line 11
    :cond_6b
    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_id()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3, v1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->isAdultChannel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_9d

    iget-object p3, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->categoryModels:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->category_pos:I

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {p3}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object p3

    const-string v1, "lock_id"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_9d

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_locked()Z

    move-result p3

    if-eqz p3, :cond_9d

    .line 12
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2, p4}, Lcom/nettv/livestore/activities/LiveChannelActivity;->showChannelLockDlgFragment(Lcom/nettv/livestore/models/EPGChannel;II)V

    goto :goto_f1

    .line 13
    :cond_9d
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    .line 14
    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->playSelectedChannel(Lcom/nettv/livestore/models/EPGChannel;)V

    goto :goto_f1

    .line 15
    :cond_a7
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_bc

    .line 16
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/nettv/livestore/activities/LiveChannelActivity;->controlFav(Lcom/nettv/livestore/models/EPGChannel;I)V

    .line 17
    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_favorite()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->showFavImageIcon(Z)V

    goto :goto_f1

    .line 18
    :cond_bc
    iget-boolean p2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->is_full:Z

    if-nez p2, :cond_f1

    .line 19
    iget-object p2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result p2

    if-nez p2, :cond_d7

    .line 20
    iget-object p2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->handler:Landroid/os/Handler;

    iget-object p3, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgTicker:Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 21
    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getStream_id()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgTimer(Ljava/lang/String;)V

    goto :goto_da

    .line 22
    :cond_d7
    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->showEpgInfo(Ljava/util/List;)V

    .line 23
    :goto_da
    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_name:Ljava/lang/String;

    .line 24
    iget-object p3, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_name:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_favorite()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->showFavImageIcon(Z)V

    .line 26
    iget p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->pre_channel_pos:I

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->changeChannelInfo(I)V

    :cond_f1
    :goto_f1
    return-object v0
.end method

.method private synthetic lambda$playSelectedChannel$2()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->categoryModels:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->category_pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "resume_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channelAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channelAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;->setSelectedPosition(I)V

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/BaseGridView;->scrollToPosition(I)V

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    .line 6
    iput v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    :cond_2d
    return-void
.end method

.method private synthetic lambda$showSearchDlgFragment$1(Lcom/nettv/livestore/models/EPGChannel;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->releaseMediaPlayer()V

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->et_search:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_75

    .line 3
    iget v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->category_pos:I

    const/4 v2, 0x4

    const-string v3, ""

    if-le v0, v2, :cond_56

    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupCategory()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    if-ge v0, v2, :cond_56

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupCategory()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_70

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupCategory()Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->category_pos:I

    add-int/lit8 v2, v2, -0x5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6
    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2, v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupChannels(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 7
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Lcom/nettv/livestore/helper/RealmController;->getEpgChannelsByNameArray(Ljava/util/List;Ljava/lang/String;)Lio/realm/RealmResults;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgChannels:Lio/realm/RealmResults;

    goto :goto_70

    .line 8
    :cond_56
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v0

    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->categoryModels:Ljava/util/List;

    iget v4, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->category_pos:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nettv/livestore/models/CategoryModel;

    iget-object v4, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v4}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v4

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/nettv/livestore/helper/RealmController;->getLiveChannelsByCategory(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmResults;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgChannels:Lio/realm/RealmResults;

    .line 9
    :cond_70
    :goto_70
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->et_search:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    :cond_75
    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->getRealChannelPosition(Lcom/nettv/livestore/models/EPGChannel;)I

    move-result v0

    iput v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    .line 11
    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v2, v0}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    .line 12
    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->playSelectedChannel(Lcom/nettv/livestore/models/EPGChannel;)V

    .line 13
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result p1

    if-eqz p1, :cond_90

    const/4 p1, 0x0

    .line 14
    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->showEpgInfo(Ljava/util/List;)V

    goto :goto_95

    .line 15
    :cond_90
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->stream_id:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->getShortEpg(Ljava/lang/String;)V

    .line 16
    :goto_95
    iget p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->changeChannelInfo(I)V

    .line 17
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_favorite()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->showFavImageIcon(Z)V

    .line 18
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->hideInfoTicker:Lcom/nettv/livestore/activities/LiveChannelActivity$$ExternalSyntheticLambda2;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 20
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->mInfoHideTimer()V

    return-void
.end method

.method private mInfoHideTimer()V
    .registers 3

    const/16 v0, 0xa

    .line 1
    iput v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->hide_time:I

    .line 2
    new-instance v0, Lcom/nettv/livestore/activities/LiveChannelActivity$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/nettv/livestore/activities/LiveChannelActivity$$ExternalSyntheticLambda2;-><init>(Lcom/nettv/livestore/activities/LiveChannelActivity;I)V

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->hideInfoTicker:Lcom/nettv/livestore/activities/LiveChannelActivity$$ExternalSyntheticLambda2;

    .line 3
    invoke-virtual {v0}, Lcom/nettv/livestore/activities/LiveChannelActivity$$ExternalSyntheticLambda2;->run()V

    return-void
.end method

.method private moveNexHideTicker()V
    .registers 5

    .line 1
    iget v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->hide_time:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->hide_time:I

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    .line 3
    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->hideInfoTicker:Lcom/nettv/livestore/activities/LiveChannelActivity$$ExternalSyntheticLambda2;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private moveNextTicker()V
    .registers 5

    .line 1
    iget v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->move_time:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->move_time:I

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    .line 3
    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->moveTicker:Lcom/nettv/livestore/activities/LiveChannelActivity$$ExternalSyntheticLambda2;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private moveTimer()V
    .registers 3

    const/4 v0, 0x2

    .line 1
    iput v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->move_time:I

    .line 2
    new-instance v0, Lcom/nettv/livestore/activities/LiveChannelActivity$$ExternalSyntheticLambda2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nettv/livestore/activities/LiveChannelActivity$$ExternalSyntheticLambda2;-><init>(Lcom/nettv/livestore/activities/LiveChannelActivity;I)V

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->moveTicker:Lcom/nettv/livestore/activities/LiveChannelActivity$$ExternalSyntheticLambda2;

    .line 3
    invoke-virtual {v0}, Lcom/nettv/livestore/activities/LiveChannelActivity$$ExternalSyntheticLambda2;->run()V

    return-void
.end method

.method private playNextChannel()V
    .registers 6

    .line 1
    iget v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgChannels:Lio/realm/RealmResults;

    invoke-virtual {v1}, Lio/realm/RealmResults;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    if-ge v0, v1, :cond_13

    .line 2
    iget v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    goto :goto_15

    .line 3
    :cond_13
    iput v3, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    .line 4
    :goto_15
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->categoryModels:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->category_pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "all_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgChannels:Lio/realm/RealmResults;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    invoke-virtual {v0, v1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_id()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgChannels:Lio/realm/RealmResults;

    iget v4, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    invoke-virtual {v1, v4}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->isAdultChannel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgChannels:Lio/realm/RealmResults;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    invoke-virtual {v0, v1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/EPGChannel;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    invoke-direct {p0, v0, v1, v2}, Lcom/nettv/livestore/activities/LiveChannelActivity;->showChannelLockDlgFragment(Lcom/nettv/livestore/models/EPGChannel;II)V

    goto/16 :goto_108

    .line 6
    :cond_5e
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgChannels:Lio/realm/RealmResults;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    invoke-virtual {v0, v1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_id()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgChannels:Lio/realm/RealmResults;

    iget v4, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    invoke-virtual {v1, v4}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->isAdultChannel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b6

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->categoryModels:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->category_pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lock_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b6

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgChannels:Lio/realm/RealmResults;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    invoke-virtual {v0, v1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->is_locked()Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 7
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgChannels:Lio/realm/RealmResults;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    invoke-virtual {v0, v1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/EPGChannel;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    invoke-direct {p0, v0, v1, v2}, Lcom/nettv/livestore/activities/LiveChannelActivity;->showChannelLockDlgFragment(Lcom/nettv/livestore/models/EPGChannel;II)V

    goto :goto_108

    .line 8
    :cond_b6
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgChannels:Lio/realm/RealmResults;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    invoke-virtual {v0, v1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/EPGChannel;

    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->playSelectedChannel(Lcom/nettv/livestore/models/EPGChannel;)V

    .line 9
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v0

    if-nez v0, :cond_d8

    .line 10
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgTicker:Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->stream_id:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgTimer(Ljava/lang/String;)V

    goto :goto_dc

    :cond_d8
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->showEpgInfo(Ljava/util/List;)V

    .line 13
    :goto_dc
    iget v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->changeChannelInfo(I)V

    .line 14
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_f0

    .line 15
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 16
    :cond_f0
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->hideInfoTicker:Lcom/nettv/livestore/activities/LiveChannelActivity$$ExternalSyntheticLambda2;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 17
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->mInfoHideTimer()V

    .line 18
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    :goto_108
    return-void
.end method

.method private playPreviousChannel()V
    .registers 5

    .line 1
    iget v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    const/4 v1, 0x1

    if-lez v0, :cond_9

    sub-int/2addr v0, v1

    .line 2
    iput v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    goto :goto_12

    .line 3
    :cond_9
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgChannels:Lio/realm/RealmResults;

    invoke-virtual {v0}, Lio/realm/RealmResults;->size()I

    move-result v0

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    .line 4
    :goto_12
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->categoryModels:Ljava/util/List;

    iget v2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->category_pos:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "all_id"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgChannels:Lio/realm/RealmResults;

    iget v2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    invoke-virtual {v0, v2}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_id()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgChannels:Lio/realm/RealmResults;

    iget v3, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    invoke-virtual {v2, v3}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/nettv/livestore/activities/LiveChannelActivity;->isAdultChannel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgChannels:Lio/realm/RealmResults;

    iget v2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    invoke-virtual {v0, v2}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/EPGChannel;

    iget v2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    invoke-direct {p0, v0, v2, v1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->showChannelLockDlgFragment(Lcom/nettv/livestore/models/EPGChannel;II)V

    goto/16 :goto_106

    .line 6
    :cond_5b
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgChannels:Lio/realm/RealmResults;

    iget v2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    invoke-virtual {v0, v2}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_id()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgChannels:Lio/realm/RealmResults;

    iget v3, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    invoke-virtual {v2, v3}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/nettv/livestore/activities/LiveChannelActivity;->isAdultChannel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b3

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->categoryModels:Ljava/util/List;

    iget v2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->category_pos:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "lock_id"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b3

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgChannels:Lio/realm/RealmResults;

    iget v2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    invoke-virtual {v0, v2}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->is_locked()Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 7
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgChannels:Lio/realm/RealmResults;

    iget v2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    invoke-virtual {v0, v2}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/EPGChannel;

    iget v2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    invoke-direct {p0, v0, v2, v1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->showChannelLockDlgFragment(Lcom/nettv/livestore/models/EPGChannel;II)V

    goto :goto_106

    .line 8
    :cond_b3
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgChannels:Lio/realm/RealmResults;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    invoke-virtual {v0, v1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/EPGChannel;

    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->playSelectedChannel(Lcom/nettv/livestore/models/EPGChannel;)V

    .line 9
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v0

    if-nez v0, :cond_d5

    .line 10
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgTicker:Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->stream_id:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgTimer(Ljava/lang/String;)V

    goto :goto_d9

    :cond_d5
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->showEpgInfo(Ljava/util/List;)V

    .line 13
    :goto_d9
    iget v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->changeChannelInfo(I)V

    .line 14
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_f5

    .line 16
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    :cond_f5
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->hideInfoTicker:Lcom/nettv/livestore/activities/LiveChannelActivity$$ExternalSyntheticLambda2;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 18
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->mInfoHideTimer()V

    .line 19
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    :goto_106
    return-void
.end method

.method private playSelectedChannel(Lcom/nettv/livestore/models/EPGChannel;)V
    .registers 6

    if-eqz p1, :cond_a8

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->category_pos:I

    invoke-virtual {v0, v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceCategoryPos(I)V

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    invoke-virtual {v0, v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceChannelPos(I)V

    .line 3
    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    .line 4
    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getStream_id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->stream_id:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_name:Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->is_favorite()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->showFavImageIcon(Z)V

    .line 7
    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_locked()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->showLockImageIcon(Z)V

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result p1

    if-eqz p1, :cond_41

    .line 9
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->content_url:Ljava/lang/String;

    goto :goto_61

    .line 10
    :cond_41
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceServerUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceUsername()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferencePassword()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->stream_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v3}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceLiveStreamFormat()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v1, v2, v3}, Lcom/nettv/livestore/helper/GetSharedInfo;->getLiveChannelUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->content_url:Ljava/lang/String;

    .line 11
    :goto_61
    sget-object p1, Lcom/nettv/livestore/apps/Constants;->xxx_live_categories:Ljava/util/List;

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->categoryModels:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->category_pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_9d

    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_id()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->isAdultChannel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9d

    .line 12
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object p1

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nettv/livestore/activities/LiveChannelActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/nettv/livestore/activities/LiveChannelActivity$$ExternalSyntheticLambda1;-><init>(Lcom/nettv/livestore/activities/LiveChannelActivity;)V

    invoke-virtual {p1, v1, v0, v2}, Lcom/nettv/livestore/helper/RealmController;->addToRecentChannels(Ljava/lang/String;ZLcom/nettv/livestore/helper/RealmChangeItemListener;)V

    goto :goto_a0

    .line 13
    :cond_9d
    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->showLockImageIcon(Z)V

    .line 14
    :goto_a0
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->releaseMediaPlayer()V

    .line 15
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->content_url:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->playVideo(Ljava/lang/String;)V

    :cond_a8
    return-void
.end method

.method private playVideo(Ljava/lang/String;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->release()V

    .line 2
    :cond_7
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->image_def:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->image_def:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    :cond_16
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->inferContentType(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getAdaptiveMimeTypeForContentType(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/google/android/exoplayer2/MediaItem$Builder;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    .line 5
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p1

    new-instance v2, Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;-><init>()V

    const-string v3, "title"

    .line 6
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->build()Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setMediaMetadata(Lcom/google/android/exoplayer2/MediaMetadata;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    .line 9
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    .line 10
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->trackSelectionParameters:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    .line 11
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    .line 12
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->createMediaSourceFactory()Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setMediaSourceFactory(Lcom/google/android/exoplayer2/source/MediaSource$Factory;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setTrackSelector(Lcom/google/android/exoplayer2/trackselection/TrackSelector;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 14
    invoke-direct {p0, v0, v1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->setRenderersFactory(Lcom/google/android/exoplayer2/ExoPlayer$Builder;Z)V

    .line 15
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->build()Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 16
    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->trackSelectionParameters:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/Player;->setTrackSelectionParameters(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    .line 17
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    new-instance v2, Lcom/nettv/livestore/activities/LiveChannelActivity$2;

    invoke-direct {v2, p0}, Lcom/nettv/livestore/activities/LiveChannelActivity$2;-><init>(Lcom/nettv/livestore/activities/LiveChannelActivity;)V

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/ExoPlayer;->addAnalyticsListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    .line 18
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    new-instance v2, Lcom/nettv/livestore/activities/LiveChannelActivity$PlayerEventListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/nettv/livestore/activities/LiveChannelActivity$PlayerEventListener;-><init>(Lcom/nettv/livestore/activities/LiveChannelActivity;Lcom/nettv/livestore/activities/LiveChannelActivity$1;)V

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/Player;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 19
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    new-instance v2, Lcom/google/android/exoplayer2/util/EventLogger;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/util/EventLogger;-><init>()V

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/ExoPlayer;->addAnalyticsListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    .line 20
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    sget-object v2, Lcom/google/android/exoplayer2/audio/AudioAttributes;->DEFAULT:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    invoke-interface {v0, v2, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;Z)V

    .line 21
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    .line 22
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    .line 23
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player;->setMediaItem(Lcom/google/android/exoplayer2/MediaItem;)V

    .line 24
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->prepare()V

    .line 25
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->play()V

    return-void
.end method

.method private releaseMediaPlayer()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->stop()V

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->release()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 5
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    return-void
.end method

.method private runNextEpgTicker()V
    .registers 5

    .line 1
    iget v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgTime:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgTime:I

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    add-long/2addr v0, v2

    .line 3
    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgTicker:Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private saveChannelPosition()V
    .registers 3

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    invoke-virtual {v0, v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceCategoryPos(I)V

    return-void
.end method

.method private searchChannelsInCategory(Ljava/lang/String;)V
    .registers 6

    .line 1
    iget v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->category_pos:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_40

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupCategory()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    if-ge v0, v1, :cond_40

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupCategory()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_60

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupCategory()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->category_pos:I

    add-int/lit8 v1, v1, -0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1, v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupChannels(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/nettv/livestore/helper/RealmController;->getEpgChannelsByNameArray(Ljava/util/List;Ljava/lang/String;)Lio/realm/RealmResults;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgChannels:Lio/realm/RealmResults;

    goto :goto_60

    .line 6
    :cond_40
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v0

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->categoryModels:Ljava/util/List;

    iget v2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->category_pos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/CategoryModel;

    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v2

    iget-object v3, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v3}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceLiveOrder()I

    move-result v3

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/nettv/livestore/helper/RealmController;->getLiveChannelsByCategory(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmResults;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgChannels:Lio/realm/RealmResults;

    .line 7
    :cond_60
    :goto_60
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channelAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgChannels:Lio/realm/RealmResults;

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;->updateData(Ljava/util/List;I)V

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    .line 9
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/BaseGridView;->scrollToPosition(I)V

    return-void
.end method

.method private setCurrentEpgEvent(Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/CatchUpEpg;",
            ">;)V"
        }
    .end annotation

    const-string v0, ""

    const/4 v1, 0x0

    if-eqz p1, :cond_9f

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_9f

    .line 2
    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_current_program:Landroid/widget/TextView;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nettv/livestore/models/CatchUpEpg;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/CatchUpEpg;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nettv/livestore/utils/Utils;->decode64String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_current_time:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->getCurrentTimeFormat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nettv/livestore/models/CatchUpEpg;

    invoke-virtual {v4}, Lcom/nettv/livestore/models/CatchUpEpg;->getStart()Ljava/lang/String;

    move-result-object v4

    const-string v5, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v5, v4}, Lcom/nettv/livestore/utils/Utils;->getDateFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sget-wide v8, Lcom/nettv/livestore/apps/LTVApp;->SEVER_OFFSET:J

    add-long/2addr v6, v8

    invoke-static {v3, v6, v7}, Lcom/nettv/livestore/utils/Utils;->getDateFromMillisecond(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/CatchUpEpg;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/CatchUpEpg;->getProgress()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_8e

    .line 6
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_next_program:Landroid/widget/TextView;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/CatchUpEpg;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/CatchUpEpg;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nettv/livestore/utils/Utils;->decode64String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_next_time:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->getCurrentTimeFormat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/CatchUpEpg;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/CatchUpEpg;->getStart()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/nettv/livestore/utils/Utils;->getDateFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sget-wide v4, Lcom/nettv/livestore/apps/LTVApp;->SEVER_OFFSET:J

    add-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Lcom/nettv/livestore/utils/Utils;->getDateFromMillisecond(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c4

    .line 8
    :cond_8e
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_next_time:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_next_program:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getNo_information()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c4

    .line 10
    :cond_9f
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_current_time:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/WordModels;->getNo_information()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_current_program:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 13
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_next_time:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_next_program:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getNo_information()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_c4
    return-void
.end method

.method private setFocusButtons(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->btn_catch_up:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->btn_fav:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->btn_search:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method private setFocusTopView(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_home:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_live:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_movie:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_series:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->et_search:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method private setFull()V
    .registers 10

    .line 1
    iget-boolean v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->is_full:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_3d

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->btn_catch_up:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->btn_fav:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->btn_search:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v4, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->ly_surface:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/nettv/livestore/activities/LiveChannelActivity;->setMargins(Landroid/view/View;IIII)V

    .line 7
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_32

    .line 8
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 9
    :cond_32
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->hideInfoTicker:Lcom/nettv/livestore/activities/LiveChannelActivity$$ExternalSyntheticLambda2;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->mInfoHideTimer()V

    goto :goto_7a

    :cond_3d
    const/4 v8, 0x0

    .line 11
    iget-object v4, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->ly_surface:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v3, p0

    move v5, v8

    move v6, v8

    move v7, v8

    invoke-direct/range {v3 .. v8}, Lcom/nettv/livestore/activities/LiveChannelActivity;->setMargins(Landroid/view/View;IIII)V

    .line 12
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->btn_catch_up:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->btn_fav:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->btn_search:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->hideInfoTicker:Lcom/nettv/livestore/activities/LiveChannelActivity$$ExternalSyntheticLambda2;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    invoke-direct {p0, v2}, Lcom/nettv/livestore/activities/LiveChannelActivity;->showAndHideActionsButtons(Z)V

    .line 18
    sget-object v0, Lcom/nettv/livestore/apps/FocusStatus;->second:Lcom/nettv/livestore/apps/FocusStatus;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->focusStatus:Lcom/nettv/livestore/apps/FocusStatus;

    .line 19
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 20
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channelAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    invoke-virtual {v0, v1}, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;->setSelectedPosition(I)V

    .line 21
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 22
    :goto_7a
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 23
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->main_lay:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 24
    iget-boolean v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->is_full:Z

    const v2, 0x7f0b01b6

    const v3, 0x7f0b01b5

    const v4, 0x7f0b0410

    if-eqz v1, :cond_9e

    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v4, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelinePercent(IF)V

    .line 26
    invoke-virtual {v0, v3, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelinePercent(IF)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 27
    invoke-virtual {v0, v2, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelinePercent(IF)V

    goto :goto_af

    :cond_9e
    const/high16 v1, 0x3f000000    # 0.5f

    .line 28
    invoke-virtual {v0, v4, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelinePercent(IF)V

    const v1, 0x3dcccccd    # 0.1f

    .line 29
    invoke-virtual {v0, v3, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelinePercent(IF)V

    const v1, 0x3f19999a    # 0.6f

    .line 30
    invoke-virtual {v0, v2, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelinePercent(IF)V

    .line 31
    :goto_af
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->main_lay:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method private setMargins(Landroid/view/View;IIII)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_14

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_14
    return-void
.end method

.method private setRenderersFactory(Lcom/google/android/exoplayer2/ExoPlayer$Builder;Z)V
    .registers 3

    .line 1
    invoke-static {p0, p2}, Lcom/nettv/livestore/utils/DemoUtil;->buildRenderersFactory(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/RenderersFactory;

    move-result-object p2

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setRenderersFactory(Lcom/google/android/exoplayer2/RenderersFactory;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    return-void
.end method

.method private showAndHideActionsButtons(Z)V
    .registers 4

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_15

    .line 1
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->ly_buttons:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->ly_actions:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->image_epg:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_1f

    .line 4
    :cond_15
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->ly_buttons:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->ly_actions:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1f
    return-void
.end method

.method private showAudioTrack()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3b

    .line 3
    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/WordModels;->getAudio_track()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eq v3, v5, :cond_25

    if-ne v3, v1, :cond_23

    .line 5
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTypeSupport(I)I

    move-result v0

    if-nez v0, :cond_23

    goto :goto_25

    :cond_23
    const/4 v0, 0x0

    goto :goto_26

    :cond_25
    :goto_25
    const/4 v0, 0x1

    .line 6
    :goto_26
    new-instance v3, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;

    iget-object v5, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-direct {v3, p0, v2, v5, v1}, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/google/android/exoplayer2/Player;I)V

    .line 7
    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->setAllowAdaptiveSelections(Z)Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;

    .line 8
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->setShowDisableOption(Z)Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;

    .line 9
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->build()Landroid/app/Dialog;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_4c

    .line 11
    :cond_3b
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 12
    invoke-virtual {v2}, Lcom/nettv/livestore/models/WordModels;->getNo_audio()Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_4c
    return-void
.end method

.method private showChannelLockDlgFragment(Lcom/nettv/livestore/models/EPGChannel;II)V
    .registers 8

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "fragment_channel_lock"

    .line 3
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_15

    const/4 p1, 0x0

    .line 4
    invoke-static {v1, v3, p1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_15
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceParentPassword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nettv/livestore/dlgfragment/LockDlgFragment;->newInstance(Ljava/lang/String;)Lcom/nettv/livestore/dlgfragment/LockDlgFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->lockDlgFragment:Lcom/nettv/livestore/dlgfragment/LockDlgFragment;

    .line 6
    new-instance v3, Lcom/nettv/livestore/activities/LiveChannelActivity$1;

    invoke-direct {v3, p0, p3, p2, p1}, Lcom/nettv/livestore/activities/LiveChannelActivity$1;-><init>(Lcom/nettv/livestore/activities/LiveChannelActivity;IILcom/nettv/livestore/models/EPGChannel;)V

    invoke-virtual {v1, v3}, Lcom/nettv/livestore/dlgfragment/LockDlgFragment;->setOnPinEventListener(Lcom/nettv/livestore/dlgfragment/LockDlgFragment$OnPinEventListener;)V

    .line 7
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->lockDlgFragment:Lcom/nettv/livestore/dlgfragment/LockDlgFragment;

    invoke-virtual {p1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showEpgInfo(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/CatchUpEpg;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_12

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_12

    .line 2
    :cond_9
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgAdapter:Lcom/nettv/livestore/adapter/EpgRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/nettv/livestore/adapter/EpgRecyclerAdapter;->setEpgList(Ljava/util/List;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->setCurrentEpgEvent(Ljava/util/List;)V

    goto :goto_24

    .line 4
    :cond_12
    :goto_12
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgAdapter:Lcom/nettv/livestore/adapter/EpgRecyclerAdapter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/adapter/EpgRecyclerAdapter;->setEpgList(Ljava/util/List;)V

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->setCurrentEpgEvent(Ljava/util/List;)V

    :goto_24
    return-void
.end method

.method private showFavImageIcon(Z)V
    .registers 3

    if-eqz p1, :cond_e

    .line 1
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->btn_fav:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getRemove_favorites()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_19

    .line 2
    :cond_e
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->btn_fav:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getAdd_to_favorite()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_19
    return-void
.end method

.method private showLockImageIcon(Z)V
    .registers 3

    if-eqz p1, :cond_b

    .line 1
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->image_lock:Landroid/widget/ImageButton;

    const v0, 0x7f080127

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_13

    .line 2
    :cond_b
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->image_lock:Landroid/widget/ImageButton;

    const v0, 0x7f080126

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_13
    return-void
.end method

.method private showSearchDlgFragment()V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "fragment_search"

    .line 3
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_15

    const/4 v0, 0x0

    .line 4
    invoke-static {v1, v3, v0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_15
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->categoryModels:Ljava/util/List;

    iget v3, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->category_pos:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/CategoryModel;

    iget v3, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->category_pos:I

    iget-object v4, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v4}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v4

    invoke-static {p0, v1, v3, v4}, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->newInstance(Landroid/content/Context;Lcom/nettv/livestore/models/CategoryModel;IZ)Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->searchDlgFragment:Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;

    .line 6
    new-instance v3, Lcom/nettv/livestore/activities/LiveChannelActivity$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/nettv/livestore/activities/LiveChannelActivity$$ExternalSyntheticLambda1;-><init>(Lcom/nettv/livestore/activities/LiveChannelActivity;)V

    invoke-virtual {v1, v3}, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->setSelectCurrentChannelListener(Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment$SelectCurrentChannelListener;)V

    .line 7
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->searchDlgFragment:Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showSubtitleTrack()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_36

    .line 3
    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/WordModels;->getSubtitle()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    .line 4
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_24

    if-ne v4, v3, :cond_23

    .line 5
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTypeSupport(I)I

    move-result v0

    if-nez v0, :cond_23

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    .line 6
    :cond_24
    :goto_24
    new-instance v0, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;

    iget-object v4, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-direct {v0, p0, v2, v4, v3}, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/google/android/exoplayer2/Player;I)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->setAllowAdaptiveSelections(Z)Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->build()Landroid/app/Dialog;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_47

    .line 10
    :cond_36
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 11
    invoke-virtual {v2}, Lcom/nettv/livestore/models/WordModels;->getNo_subtitle()Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_47
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 9

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3e3

    .line 2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v1, :cond_3b7

    const/16 v1, 0x52

    if-eq v0, v1, :cond_3b3

    const/16 v1, 0x54

    if-eq v0, v1, :cond_3af

    const/16 v1, 0x59

    const/16 v5, 0xa

    if-eq v0, v1, :cond_39e

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_383

    const/16 v1, 0x87

    if-eq v0, v1, :cond_30a

    const/16 v1, 0x88

    if-eq v0, v1, :cond_305

    const/16 v1, 0xa6

    if-eq v0, v1, :cond_2fc

    const/16 v1, 0xa7

    if-eq v0, v1, :cond_2f3

    packed-switch v0, :pswitch_data_3e8

    const/4 v1, 0x3

    const/4 v5, 0x2

    packed-switch v0, :pswitch_data_400

    packed-switch v0, :pswitch_data_40e

    goto/16 :goto_3e3

    .line 3
    :pswitch_40
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_num:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_4d

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_num:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :cond_4d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->key:Ljava/lang/String;

    const-string v2, "9"

    .line 5
    invoke-static {v0, v1, v2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->key:Ljava/lang/String;

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->move_pos:I

    .line 8
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->findAndShowChannel()V

    goto/16 :goto_3e3

    .line 9
    :pswitch_67
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_num:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_74

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_num:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 10
    :cond_74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->key:Ljava/lang/String;

    const-string v2, "8"

    .line 11
    invoke-static {v0, v1, v2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->key:Ljava/lang/String;

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->move_pos:I

    .line 14
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->findAndShowChannel()V

    goto/16 :goto_3e3

    .line 15
    :pswitch_8e
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_num:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_9b

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_num:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 16
    :cond_9b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->key:Ljava/lang/String;

    const-string v2, "7"

    .line 17
    invoke-static {v0, v1, v2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->key:Ljava/lang/String;

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->move_pos:I

    .line 20
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->findAndShowChannel()V

    goto/16 :goto_3e3

    .line 21
    :pswitch_b5
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_num:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_c2

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_num:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 22
    :cond_c2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->key:Ljava/lang/String;

    const-string v2, "6"

    .line 23
    invoke-static {v0, v1, v2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->key:Ljava/lang/String;

    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->move_pos:I

    .line 26
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->findAndShowChannel()V

    goto/16 :goto_3e3

    .line 27
    :pswitch_dc
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_num:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_e9

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_num:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 28
    :cond_e9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->key:Ljava/lang/String;

    const-string v2, "5"

    .line 29
    invoke-static {v0, v1, v2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->key:Ljava/lang/String;

    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->move_pos:I

    .line 32
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->findAndShowChannel()V

    goto/16 :goto_3e3

    .line 33
    :pswitch_103
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_num:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_110

    .line 34
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_num:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 35
    :cond_110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->key:Ljava/lang/String;

    const-string v2, "4"

    .line 36
    invoke-static {v0, v1, v2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->key:Ljava/lang/String;

    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->move_pos:I

    .line 39
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->findAndShowChannel()V

    goto/16 :goto_3e3

    .line 40
    :pswitch_12a
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_num:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_137

    .line 41
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_num:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 42
    :cond_137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->key:Ljava/lang/String;

    const-string v2, "3"

    .line 43
    invoke-static {v0, v1, v2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->key:Ljava/lang/String;

    .line 45
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->move_pos:I

    .line 46
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->findAndShowChannel()V

    goto/16 :goto_3e3

    .line 47
    :pswitch_151
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_num:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_15e

    .line 48
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_num:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 49
    :cond_15e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->key:Ljava/lang/String;

    const-string v2, "2"

    .line 50
    invoke-static {v0, v1, v2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->key:Ljava/lang/String;

    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->move_pos:I

    .line 53
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->findAndShowChannel()V

    goto/16 :goto_3e3

    .line 54
    :pswitch_178
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_num:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_185

    .line 55
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_num:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 56
    :cond_185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->key:Ljava/lang/String;

    const-string v2, "1"

    .line 57
    invoke-static {v0, v1, v2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->key:Ljava/lang/String;

    .line 59
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->move_pos:I

    .line 60
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->findAndShowChannel()V

    goto/16 :goto_3e3

    .line 61
    :pswitch_19f
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_num:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_1ac

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_num:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 62
    :cond_1ac
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3e3

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->key:Ljava/lang/String;

    const-string v2, "0"

    .line 64
    invoke-static {v0, v1, v2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->key:Ljava/lang/String;

    .line 66
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->move_pos:I

    .line 67
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->findAndShowChannel()V

    goto/16 :goto_3e3

    .line 68
    :pswitch_1ce
    iget-boolean v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->is_full:Z

    if-eqz v0, :cond_3e3

    .line 69
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_3e3

    .line 70
    iput-boolean v4, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->is_full:Z

    .line 71
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->setFull()V

    return v3

    .line 72
    :pswitch_1e0
    iget-boolean v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->is_full:Z

    if-nez v0, :cond_1f5

    .line 73
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_3e3

    .line 74
    invoke-direct {p0, v3}, Lcom/nettv/livestore/activities/LiveChannelActivity;->setFocusButtons(Z)V

    .line 75
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->btn_catch_up:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v3

    .line 76
    :cond_1f5
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->focusStatus:Lcom/nettv/livestore/apps/FocusStatus;

    sget-object v1, Lcom/nettv/livestore/apps/FocusStatus;->second:Lcom/nettv/livestore/apps/FocusStatus;

    if-ne v0, v1, :cond_200

    .line 77
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->playNextChannel()V

    goto/16 :goto_3e3

    .line 78
    :cond_200
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->image_audio:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_3e3

    return v3

    .line 79
    :pswitch_209
    iget-boolean v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->is_full:Z

    if-nez v0, :cond_21e

    .line 80
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->btn_catch_up:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_3e3

    .line 81
    invoke-direct {p0, v4}, Lcom/nettv/livestore/activities/LiveChannelActivity;->setFocusButtons(Z)V

    .line 82
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v3

    .line 83
    :cond_21e
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->focusStatus:Lcom/nettv/livestore/apps/FocusStatus;

    sget-object v1, Lcom/nettv/livestore/apps/FocusStatus;->second:Lcom/nettv/livestore/apps/FocusStatus;

    if-ne v0, v1, :cond_229

    .line 84
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->playPreviousChannel()V

    goto/16 :goto_3e3

    .line 85
    :cond_229
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->image_epg:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_3e3

    return v3

    .line 86
    :pswitch_232
    iget-boolean v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->is_full:Z

    if-eqz v0, :cond_26f

    .line 87
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_24f

    .line 88
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->hideInfoTicker:Lcom/nettv/livestore/activities/LiveChannelActivity$$ExternalSyntheticLambda2;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 90
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->mInfoHideTimer()V

    goto/16 :goto_3e3

    .line 91
    :cond_24f
    sget-object v0, Lcom/nettv/livestore/activities/LiveChannelActivity$6;->$SwitchMap$com$vilhao$player$apps$FocusStatus:[I

    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->focusStatus:Lcom/nettv/livestore/apps/FocusStatus;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v3, :cond_26a

    if-eq v0, v5, :cond_262

    if-eq v0, v1, :cond_261

    goto/16 :goto_3e3

    :cond_261
    return v3

    .line 92
    :cond_262
    sget-object p1, Lcom/nettv/livestore/apps/FocusStatus;->third:Lcom/nettv/livestore/apps/FocusStatus;

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->focusStatus:Lcom/nettv/livestore/apps/FocusStatus;

    .line 93
    invoke-direct {p0, v3}, Lcom/nettv/livestore/activities/LiveChannelActivity;->showAndHideActionsButtons(Z)V

    return v3

    .line 94
    :cond_26a
    sget-object p1, Lcom/nettv/livestore/apps/FocusStatus;->second:Lcom/nettv/livestore/apps/FocusStatus;

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->focusStatus:Lcom/nettv/livestore/apps/FocusStatus;

    return v3

    .line 95
    :cond_26f
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_home:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_297

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_live:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_297

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_movie:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_297

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_series:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_297

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->et_search:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_3e3

    .line 96
    :cond_297
    invoke-direct {p0, v4}, Lcom/nettv/livestore/activities/LiveChannelActivity;->setFocusTopView(Z)V

    .line 97
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v3

    .line 98
    :pswitch_2a0
    iget-boolean v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->is_full:Z

    if-eqz v0, :cond_2c5

    .line 99
    sget-object v0, Lcom/nettv/livestore/activities/LiveChannelActivity$6;->$SwitchMap$com$vilhao$player$apps$FocusStatus:[I

    iget-object v6, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->focusStatus:Lcom/nettv/livestore/apps/FocusStatus;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v0, v0, v6

    if-eq v0, v3, :cond_2bf

    if-eq v0, v5, :cond_2bf

    if-eq v0, v1, :cond_2b6

    goto/16 :goto_3e3

    .line 100
    :cond_2b6
    sget-object v0, Lcom/nettv/livestore/apps/FocusStatus;->second:Lcom/nettv/livestore/apps/FocusStatus;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->focusStatus:Lcom/nettv/livestore/apps/FocusStatus;

    .line 101
    invoke-direct {p0, v4}, Lcom/nettv/livestore/activities/LiveChannelActivity;->showAndHideActionsButtons(Z)V

    goto/16 :goto_3e3

    .line 102
    :cond_2bf
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return v3

    .line 103
    :cond_2c5
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2da

    iget v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->pre_channel_pos:I

    if-nez v0, :cond_2da

    .line 104
    invoke-direct {p0, v3}, Lcom/nettv/livestore/activities/LiveChannelActivity;->setFocusTopView(Z)V

    .line 105
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_live:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v3

    .line 106
    :cond_2da
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->btn_catch_up:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_2f2

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->btn_fav:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_2f2

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->btn_search:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_3e3

    :cond_2f2
    return v3

    .line 107
    :cond_2f3
    iget-boolean v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->is_full:Z

    if-eqz v0, :cond_3e3

    .line 108
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->playPreviousChannel()V

    goto/16 :goto_3e3

    .line 109
    :cond_2fc
    iget-boolean v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->is_full:Z

    if-eqz v0, :cond_3e3

    .line 110
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->playNextChannel()V

    goto/16 :goto_3e3

    .line 111
    :cond_305
    :pswitch_305
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->showSearchDlgFragment()V

    goto/16 :goto_3e3

    .line 112
    :cond_30a
    :pswitch_30a
    iget-boolean v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->is_full:Z

    if-eqz v0, :cond_347

    .line 113
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    if-eqz v0, :cond_3e3

    .line 114
    iget v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    invoke-direct {p0, v0, v1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->controlFav(Lcom/nettv/livestore/models/EPGChannel;I)V

    .line 115
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->is_favorite()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->showFavImageIcon(Z)V

    .line 116
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->is_favorite()Z

    move-result v0

    if-eqz v0, :cond_338

    .line 117
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getChannel_added_to_fav()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3e3

    .line 118
    :cond_338
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getChannel_removed_from_fav()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3e3

    .line 119
    :cond_347
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgChannels:Lio/realm/RealmResults;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->pre_channel_pos:I

    invoke-virtual {v0, v1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/EPGChannel;

    if-eqz v0, :cond_3e3

    .line 120
    iget v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    invoke-direct {p0, v0, v1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->controlFav(Lcom/nettv/livestore/models/EPGChannel;I)V

    .line 121
    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->is_favorite()Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-direct {p0, v1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->showFavImageIcon(Z)V

    .line 122
    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->is_favorite()Z

    move-result v0

    if-eqz v0, :cond_375

    .line 123
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getChannel_added_to_fav()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3e3

    .line 124
    :cond_375
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getChannel_removed_from_fav()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3e3

    .line 125
    :cond_383
    iget-boolean v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->is_full:Z

    if-nez v0, :cond_3e3

    .line 126
    iget v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->pre_channel_pos:I

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgChannels:Lio/realm/RealmResults;

    invoke-virtual {v1}, Lio/realm/RealmResults;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0xb

    if-ge v0, v1, :cond_3e3

    .line 127
    iget v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->pre_channel_pos:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->pre_channel_pos:I

    .line 128
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v1, v0}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    goto :goto_3e3

    .line 129
    :cond_39e
    iget-boolean v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->is_full:Z

    if-nez v0, :cond_3e3

    .line 130
    iget v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->pre_channel_pos:I

    if-le v0, v5, :cond_3e3

    sub-int/2addr v0, v5

    .line 131
    iput v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->pre_channel_pos:I

    .line 132
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v1, v0}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    goto :goto_3e3

    .line 133
    :cond_3af
    :pswitch_3af
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->goToSeriesActivity()V

    goto :goto_3e3

    .line 134
    :cond_3b3
    :pswitch_3b3
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->goToVodActivity()V

    goto :goto_3e3

    .line 135
    :cond_3b7
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3cc

    .line 136
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 137
    invoke-direct {p0, v4}, Lcom/nettv/livestore/activities/LiveChannelActivity;->showAndHideActionsButtons(Z)V

    .line 138
    sget-object p1, Lcom/nettv/livestore/apps/FocusStatus;->second:Lcom/nettv/livestore/apps/FocusStatus;

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->focusStatus:Lcom/nettv/livestore/apps/FocusStatus;

    return v3

    .line 139
    :cond_3cc
    iget-boolean v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->is_full:Z

    if-eqz v0, :cond_3d6

    .line 140
    iput-boolean v4, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->is_full:Z

    .line 141
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->setFull()V

    return v3

    .line 142
    :cond_3d6
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    if-eqz v0, :cond_3dd

    .line 143
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->saveChannelPosition()V

    .line 144
    :cond_3dd
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->releaseMediaPlayer()V

    .line 145
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 146
    :cond_3e3
    :goto_3e3
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_data_3e8
    .packed-switch 0x7
        :pswitch_19f
        :pswitch_178
        :pswitch_151
        :pswitch_12a
        :pswitch_103
        :pswitch_dc
        :pswitch_b5
        :pswitch_8e
        :pswitch_67
        :pswitch_40
    .end packed-switch

    :pswitch_data_400
    .packed-switch 0x13
        :pswitch_2a0
        :pswitch_232
        :pswitch_209
        :pswitch_1e0
        :pswitch_1ce
    .end packed-switch

    :pswitch_data_40e
    .packed-switch 0xb7
        :pswitch_3b3
        :pswitch_3af
        :pswitch_30a
        :pswitch_305
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_156

    goto/16 :goto_155

    .line 2
    :sswitch_a
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->releaseMediaPlayer()V

    .line 3
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->categoryModels:Ljava/util/List;

    iget v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->category_pos:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "resume_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2a

    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    if-eqz p1, :cond_2a

    .line 4
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->saveChannelPosition()V

    .line 5
    :cond_2a
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "is_changed"

    const-string v1, "home"

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 7
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_155

    .line 9
    :sswitch_3f
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->goToVodActivity()V

    goto/16 :goto_155

    .line 10
    :sswitch_44
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->showSubtitleTrack()V

    goto/16 :goto_155

    .line 11
    :sswitch_49
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->goToSeriesActivity()V

    goto/16 :goto_155

    .line 12
    :sswitch_4e
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    sget-object p1, Lcom/nettv/livestore/apps/FocusStatus;->second:Lcom/nettv/livestore/apps/FocusStatus;

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->focusStatus:Lcom/nettv/livestore/apps/FocusStatus;

    .line 14
    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->showAndHideActionsButtons(Z)V

    .line 15
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->showSearchDlgFragment()V

    goto/16 :goto_155

    .line 16
    :sswitch_61
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    if-eqz p1, :cond_155

    .line 17
    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_id()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->isAdultChannel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_84

    .line 18
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getChannel_locked_default()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_155

    .line 19
    :cond_84
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_locked()Z

    move-result p1

    if-eqz p1, :cond_96

    .line 20
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    iget v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    const/4 v1, 0x3

    invoke-direct {p0, p1, v0, v1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->showChannelLockDlgFragment(Lcom/nettv/livestore/models/EPGChannel;II)V

    goto/16 :goto_155

    .line 21
    :cond_96
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    invoke-direct {p0, p1, v1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->controlLock(Lcom/nettv/livestore/models/EPGChannel;I)V

    .line 22
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_locked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->showLockImageIcon(Z)V

    .line 23
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_locked()Z

    move-result p1

    if-eqz p1, :cond_bf

    .line 24
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getChannel_unlocked()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_155

    .line 25
    :cond_bf
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getChannel_locked()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_155

    .line 26
    :sswitch_ce
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    if-eqz p1, :cond_155

    .line 27
    iget v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    invoke-direct {p0, p1, v1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->controlFav(Lcom/nettv/livestore/models/EPGChannel;I)V

    .line 28
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_favorite()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->showFavImageIcon(Z)V

    .line 29
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_favorite()Z

    move-result p1

    if-eqz p1, :cond_f8

    .line 30
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getChannel_removed_from_fav()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_155

    .line 31
    :cond_f8
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getChannel_added_to_fav()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_155

    .line 32
    :sswitch_106
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->showAudioTrack()V

    goto :goto_155

    .line 33
    :sswitch_10a
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->goToSearchActivity()V

    goto :goto_155

    .line 34
    :sswitch_10e
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgChannels:Lio/realm/RealmResults;

    invoke-virtual {p1}, Lio/realm/RealmResults;->size()I

    move-result p1

    if-lez p1, :cond_155

    .line 35
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgChannels:Lio/realm/RealmResults;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->pre_channel_pos:I

    invoke-virtual {p1, v1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/EPGChannel;

    if-eqz p1, :cond_155

    .line 36
    iget v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->pre_channel_pos:I

    invoke-direct {p0, p1, v1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->controlFav(Lcom/nettv/livestore/models/EPGChannel;I)V

    .line 37
    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_favorite()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->showFavImageIcon(Z)V

    .line 38
    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_favorite()Z

    move-result p1

    if-eqz p1, :cond_144

    .line 39
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getChannel_removed_from_fav()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_155

    .line 40
    :cond_144
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getChannel_added_to_fav()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_155

    .line 41
    :sswitch_152
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->goToCatchupActivity()V

    :cond_155
    :goto_155
    return-void

    :sswitch_data_156
    .sparse-switch
        0x7f0b008a -> :sswitch_152
        0x7f0b008d -> :sswitch_10e
        0x7f0b009f -> :sswitch_10a
        0x7f0b01c4 -> :sswitch_106
        0x7f0b01d3 -> :sswitch_152
        0x7f0b01d6 -> :sswitch_ce
        0x7f0b01dc -> :sswitch_61
        0x7f0b01e7 -> :sswitch_4e
        0x7f0b01e8 -> :sswitch_49
        0x7f0b01ea -> :sswitch_44
        0x7f0b01f0 -> :sswitch_3f
        0x7f0b03d9 -> :sswitch_a
        0x7f0b03e2 -> :sswitch_3f
        0x7f0b03f7 -> :sswitch_49
    .end sparse-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 8

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e0024

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 3
    invoke-static {p0}, Lcom/nettv/livestore/utils/Utils;->FullScreenCall(Landroid/app/Activity;)V

    .line 4
    new-instance p1, Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-direct {p1, p0}, Lcom/nettv/livestore/helper/PreferenceHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    .line 5
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->getWordModel(Landroid/content/Context;)Lcom/nettv/livestore/models/WordModels;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 6
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->initView()V

    .line 7
    invoke-static {p0}, Lcom/nettv/livestore/utils/DemoUtil;->getDataSourceFactory(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 8
    new-instance p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    .line 9
    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceSubtitleEnable()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setTrackTypeDisabled(IZ)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->build()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->trackSelectionParameters:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "is_full"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->is_full:Z

    .line 12
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceInvisibleLiveCategories()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/nettv/livestore/apps/Constants;->getLiveGroupModels(Ljava/util/List;Landroid/content/Context;)V

    .line 13
    sget-object p1, Lcom/nettv/livestore/apps/LTVApp;->live_categories_filter:Ljava/util/List;

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->categoryModels:Ljava/util/List;

    .line 14
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceCategoryPos()I

    move-result p1

    iput p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->category_pos:I

    .line 15
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->categoryModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_67

    .line 16
    iput v1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->category_pos:I

    .line 17
    :cond_67
    iget p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->category_pos:I

    const/4 v0, 0x4

    const-string v3, ""

    if-le p1, v0, :cond_a9

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupCategory()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-ge p1, v0, :cond_a9

    .line 18
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupCategory()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_c9

    .line 19
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupCategory()Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->category_pos:I

    add-int/lit8 v0, v0, -0x5

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 20
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupChannels(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 21
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Lcom/nettv/livestore/helper/RealmController;->getEpgChannelsByNameArray(Ljava/util/List;Ljava/lang/String;)Lio/realm/RealmResults;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgChannels:Lio/realm/RealmResults;

    goto :goto_c9

    .line 22
    :cond_a9
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object p1

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->categoryModels:Ljava/util/List;

    iget v4, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->category_pos:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CategoryModel;

    iget-object v4, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v4}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v4

    iget-object v5, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v5}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceLiveOrder()I

    move-result v5

    invoke-virtual {p1, v0, v3, v4, v5}, Lcom/nettv/livestore/helper/RealmController;->getLiveChannelsByCategory(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmResults;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgChannels:Lio/realm/RealmResults;

    .line 23
    :cond_c9
    :goto_c9
    iput v2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    .line 24
    new-instance p1, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgChannels:Lio/realm/RealmResults;

    new-instance v3, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda4;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4}, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p1, p0, v0, v2, v3}, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILkotlin/jvm/functions/Function4;)V

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channelAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;

    .line 25
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 26
    invoke-direct {p0, v2}, Lcom/nettv/livestore/activities/LiveChannelActivity;->setFocusTopView(Z)V

    .line 27
    invoke-direct {p0, v2}, Lcom/nettv/livestore/activities/LiveChannelActivity;->setFocusButtons(Z)V

    .line 28
    new-instance p1, Lcom/nettv/livestore/adapter/EpgRecyclerAdapter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/nettv/livestore/adapter/EpgRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgAdapter:Lcom/nettv/livestore/adapter/EpgRecyclerAdapter;

    .line 29
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->recycler_epg:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 30
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->recycler_epg:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgAdapter:Lcom/nettv/livestore/adapter/EpgRecyclerAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 31
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->recycler_epg:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 32
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgChannels:Lio/realm/RealmResults;

    invoke-virtual {p1}, Lio/realm/RealmResults;->size()I

    move-result p1

    if-lez p1, :cond_1e0

    .line 33
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->setFull()V

    .line 34
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgChannels:Lio/realm/RealmResults;

    iget v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    invoke-virtual {p1, v0}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_id()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgChannels:Lio/realm/RealmResults;

    iget v3, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    invoke-virtual {v0, v3}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->isAdultChannel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_136

    .line 35
    iput v2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    .line 36
    :cond_136
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->categoryModels:Ljava/util/List;

    iget v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->category_pos:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "lock_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_16c

    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgChannels:Lio/realm/RealmResults;

    iget v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    invoke-virtual {p1, v0}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_locked()Z

    move-result p1

    if-eqz p1, :cond_16c

    .line 37
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgChannels:Lio/realm/RealmResults;

    iget v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    invoke-virtual {p1, v0}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/EPGChannel;

    iget v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    invoke-direct {p0, p1, v0, v1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->showChannelLockDlgFragment(Lcom/nettv/livestore/models/EPGChannel;II)V

    goto :goto_1e0

    .line 38
    :cond_16c
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgChannels:Lio/realm/RealmResults;

    iget v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    invoke-virtual {p1, v0}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/EPGChannel;

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->playSelectedChannel(Lcom/nettv/livestore/models/EPGChannel;)V

    .line 39
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgChannels:Lio/realm/RealmResults;

    iget v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    invoke-virtual {p1, v0}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getStream_id()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->stream_id:Ljava/lang/String;

    .line 40
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result p1

    if-nez p1, :cond_19e

    .line 41
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgTicker:Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 42
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->stream_id:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgTimer(Ljava/lang/String;)V

    goto :goto_1a2

    :cond_19e
    const/4 p1, 0x0

    .line 43
    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->showEpgInfo(Ljava/util/List;)V

    .line 44
    :goto_1a2
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgChannels:Lio/realm/RealmResults;

    iget v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    invoke-virtual {p1, v0}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_name:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->txt_name:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->epgChannels:Lio/realm/RealmResults;

    iget v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    invoke-virtual {p1, v0}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_favorite()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->showFavImageIcon(Z)V

    .line 47
    iget p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveChannelActivity;->changeChannelInfo(I)V

    .line 48
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 49
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    iget v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    .line 50
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    iget v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->channel_pos:I

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/BaseGridView;->scrollToPosition(I)V

    :cond_1e0
    :goto_1e0
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .registers 3

    if-eqz p2, :cond_c

    .line 1
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->hideInfoTicker:Lcom/nettv/livestore/activities/LiveChannelActivity$$ExternalSyntheticLambda2;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->mInfoHideTimer()V

    :cond_c
    return-void
.end method

.method public onPause()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 2
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_13

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    if-eqz v0, :cond_10

    .line 4
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->onPause()V

    .line 5
    :cond_10
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->releaseMediaPlayer()V

    :cond_13
    return-void
.end method

.method public onStop()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 2
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_13

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveChannelActivity;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    if-eqz v0, :cond_10

    .line 4
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->onPause()V

    .line 5
    :cond_10
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveChannelActivity;->releaseMediaPlayer()V

    :cond_13
    return-void
.end method
