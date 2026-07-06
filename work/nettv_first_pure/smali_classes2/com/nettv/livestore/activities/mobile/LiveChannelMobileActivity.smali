.class public Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "LiveChannelMobileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity$PlayerEventListener;
    }
.end annotation


# instance fields
.field public audioManager:Landroid/media/AudioManager;

.field public bright_seekbar:Landroid/widget/SeekBar;

.field public btn_back:Landroid/widget/ImageButton;

.field public btn_catch_up:Landroid/widget/Button;

.field public btn_fav:Landroid/widget/Button;

.field public btn_full_epg:Landroid/widget/ImageButton;

.field public btn_full_fav:Landroid/widget/ImageButton;

.field public btn_full_search:Landroid/widget/ImageButton;

.field public btn_lock:Landroid/widget/ImageButton;

.field public btn_next:Landroid/widget/ImageButton;

.field public btn_play:Landroid/widget/ImageButton;

.field public btn_previous:Landroid/widget/ImageButton;

.field public btn_resolution:Landroid/widget/ImageButton;

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

.field public handler:Landroid/os/Handler;

.field public hideInfoTicker:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;

.field public hide_time:I

.field public image_def:Landroid/widget/ImageView;

.field public is_full:Z

.field public is_system_setting:Z

.field public lockDlgFragment:Lcom/nettv/livestore/dlgfragment/LockDlgFragment;

.field public ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public ly_surface:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public main_lay:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public player:Lcom/google/android/exoplayer2/ExoPlayer;

.field public playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

.field public pre_channel_pos:I

.field public preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

.field public recycler_channel:Landroidx/recyclerview/widget/RecyclerView;

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

.field public txt_back:Landroid/widget/TextView;

.field public txt_channel_name:Landroid/widget/TextView;

.field public txt_current_program:Landroid/widget/TextView;

.field public txt_current_time:Landroid/widget/TextView;

.field public txt_group:Landroid/widget/TextView;

.field public txt_home:Landroid/widget/TextView;

.field public txt_live:Landroid/widget/TextView;

.field public txt_movie:Landroid/widget/TextView;

.field public txt_name:Landroid/widget/TextView;

.field public txt_next_program:Landroid/widget/TextView;

.field public txt_next_time:Landroid/widget/TextView;

.field public txt_resolution:Landroid/widget/TextView;

.field public txt_series:Landroid/widget/TextView;

.field public view_click:Landroid/view/View;

.field public volumeLevel:I

.field public volume_seekbar:Landroid/widget/SeekBar;

.field public wordModels:Lcom/nettv/livestore/models/WordModels;


# direct methods
.method public static synthetic $r8$lambda$9-dccDtHWqSzFb0JtH5-DjIl-hM(Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->lambda$mInfoHideTimer$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$FT4M_WXxmBkQ8CQVPTd1nuK0QT4(Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->lambda$playSelectedChannel$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$GltV1s_PTnW3ABfewkeJnUiHedM(Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;Lcom/nettv/livestore/models/EPGChannel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->lambda$showSearchDlgFragment$1(Lcom/nettv/livestore/models/EPGChannel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JglfL2r_UQrp7I6uIFonmvSU7dA(Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->lambda$controlLock$5(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$iQM59_ZTMiO0PiFURF6_g8QjPjY(Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->lambda$initView$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k3wmfZMXWbwOqsudVoygMLG_TWg(Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->lambda$new$7(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lhopmc0BQ1DAyXRzh60J2_xWySE(Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;Lcom/nettv/livestore/models/EPGChannel;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->lambda$onCreate$0(Lcom/nettv/livestore/models/EPGChannel;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$o4HkHby7CGP2uKSMFY_jNQO47TQ(Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->lambda$controlFav$4(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$okAssV4QpE__5YlSLlGoJqL_aWk(Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->lambda$epgTimer$3(Ljava/lang/String;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->category_pos:I

    iput v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    iput v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->pre_channel_pos:I

    iput v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->error_count:I

    const-string v1, ""

    .line 3
    iput-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->stream_id:Ljava/lang/String;

    .line 4
    iput-boolean v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->is_full:Z

    .line 5
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->handler:Landroid/os/Handler;

    .line 6
    iput-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->categoryName:Ljava/lang/String;

    .line 7
    iput-boolean v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->is_system_setting:Z

    .line 8
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->someActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public static synthetic access$000(Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;Lcom/nettv/livestore/models/EPGChannel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->playSelectedChannel(Lcom/nettv/livestore/models/EPGChannel;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgTimer(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->releaseMediaPlayer()V

    return-void
.end method

.method public static synthetic access$1100(Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->playVideo(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->searchChannelsInCategory(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->showEpgInfo(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->showFavImageIcon(Z)V

    return-void
.end method

.method public static synthetic access$400(Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->changeChannelInfo(I)V

    return-void
.end method

.method public static synthetic access$500(Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->mInfoHideTimer()V

    return-void
.end method

.method public static synthetic access$600(Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->getShortEpg(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$700(Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;Lcom/nettv/livestore/models/EPGChannel;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->controlLock(Lcom/nettv/livestore/models/EPGChannel;I)V

    return-void
.end method

.method public static synthetic access$800(Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->showLockImageIcon(Z)V

    return-void
.end method

.method private changeChannelInfo(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->txt_group:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->categoryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->txt_channel_name:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgChannels:Lio/realm/RealmResults;

    invoke-virtual {v2, p1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/EPGChannel;->getNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgChannels:Lio/realm/RealmResults;

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
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgChannels:Lio/realm/RealmResults;

    invoke-virtual {v0, p1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getStream_icon()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f08010b

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

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

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_image:Landroid/widget/ImageView;

    .line 8
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_0

    .line 9
    :cond_0
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

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_image:Landroid/widget/ImageView;

    .line 12
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :goto_0
    return-void
.end method

.method private controlFav(Lcom/nettv/livestore/models/EPGChannel;I)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    sget-object v0, Lcom/nettv/livestore/apps/Constants;->xxx_live_categories:Ljava/util/List;

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->categoryModels:Ljava/util/List;

    iget v2, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->category_pos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_favorite()Z

    move-result p1

    const/4 v2, 0x1

    xor-int/2addr p1, v2

    new-instance v3, Lcom/google/android/material/sidesheet/SideSheetBehavior$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p2, v2}, Lcom/google/android/material/sidesheet/SideSheetBehavior$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {v0, v1, p1, v3}, Lcom/nettv/livestore/helper/RealmController;->addToFavChannels(Ljava/lang/String;ZLcom/nettv/livestore/helper/RealmChangeItemListener;)V

    :cond_0
    return-void
.end method

.method private controlLock(Lcom/nettv/livestore/models/EPGChannel;I)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    sget-object v0, Lcom/nettv/livestore/apps/Constants;->xxx_live_categories:Ljava/util/List;

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->categoryModels:Ljava/util/List;

    iget v2, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->category_pos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_locked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    new-instance v2, Lcom/google/android/material/sidesheet/SideSheetBehavior$$ExternalSyntheticLambda0;

    const/4 v3, 0x2

    invoke-direct {v2, p0, p2, v3}, Lcom/google/android/material/sidesheet/SideSheetBehavior$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/nettv/livestore/helper/RealmController;->addToLockChannels(Ljava/lang/String;ZLcom/nettv/livestore/helper/RealmChangeItemListener;)V

    :cond_0
    return-void
.end method

.method private createMediaSourceFactory()Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .locals 3

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

    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->setDataSourceFactory(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;

    move-result-object v1

    .line 6
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->setDrmSessionManagerProvider(Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;

    move-result-object v0

    return-object v0
.end method

.method private epgTimer(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgTime:I

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;

    const/16 v1, 0xc

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgTicker:Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;->run()V

    return-void
.end method

.method private getRealChannelPosition(Lcom/nettv/livestore/models/EPGChannel;)I
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgChannels:Lio/realm/RealmResults;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

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

    if-eqz v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private getShortEpg(Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceServerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nettv/livestore/remote/RetroClass;->getAPIService(Ljava/lang/String;)Lcom/nettv/livestore/remote/APIService;

    move-result-object v0

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceUsername()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferencePassword()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/nettv/livestore/remote/APIService;->get_short_epg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity$3;

    invoke-direct {v0, p0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity$3;-><init>(Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->showEpgInfo(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method private goToCatchupActivity()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getNo_epg_avaliable()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->releaseMediaPlayer()V

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nettv/livestore/apps/LTVApp;->channelName:Ljava/lang/String;

    .line 6
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nettv/livestore/activities/CatchUpActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7
    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->someActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private goToSearchActivity()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->releaseMediaPlayer()V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nettv/livestore/activities/SearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "is_live"

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4
    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->someActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method private goToSeriesActivity()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->categoryModels:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->category_pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "resume_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->saveCategoryAndChannelPosition()V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->releaseMediaPlayer()V

    .line 4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "is_changed"

    const-string v2, "series"

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 6
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private goToVodActivity()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->categoryModels:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->category_pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "resume_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->saveCategoryAndChannelPosition()V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->releaseMediaPlayer()V

    .line 4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "is_changed"

    const-string v2, "movie"

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 6
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private initView()V
    .locals 10

    const v0, 0x7f0b017b

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->main_lay:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b02dd

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    const/4 v1, 0x3

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setResizeMode(I)V

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->getSubtitleView()Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setApplyEmbeddedStyles(Z)V

    .line 5
    new-instance v0, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

    iget-object v3, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v3}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceSubtitleColor()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    iget-object v3, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

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
    iget-object v3, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->getSubtitleView()Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-result-object v3

    iget-object v4, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v4}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceSubtitleSize()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v1, v4}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setFixedTextSize(IF)V

    .line 7
    iget-object v3, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->getSubtitleView()Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setStyle(Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;)V

    const v0, 0x7f0b03d9

    .line 8
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->txt_home:Landroid/widget/TextView;

    const v0, 0x7f0b03dc

    .line 9
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->txt_live:Landroid/widget/TextView;

    const v0, 0x7f0b03e2

    .line 10
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->txt_movie:Landroid/widget/TextView;

    const v0, 0x7f0b03f7

    .line 11
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->txt_series:Landroid/widget/TextView;

    const v0, 0x7f0b03bc

    .line 12
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->txt_back:Landroid/widget/TextView;

    const v0, 0x7f0b03e4

    .line 13
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->txt_name:Landroid/widget/TextView;

    const v0, 0x7f0b012d

    .line 14
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->et_search:Landroid/widget/EditText;

    const v0, 0x7f0b02eb

    .line 15
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->recycler_channel:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0b0255

    .line 16
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->ly_surface:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b02ee

    .line 17
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->recycler_epg:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0b008d

    .line 18
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->btn_fav:Landroid/widget/Button;

    const v0, 0x7f0b008a

    .line 19
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->btn_catch_up:Landroid/widget/Button;

    const v0, 0x7f0b009f

    .line 20
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->btn_search:Landroid/widget/Button;

    .line 21
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->txt_home:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/WordModels;->getHome()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->txt_live:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/WordModels;->getLive_tv()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->txt_movie:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/WordModels;->getMovies()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->txt_series:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/WordModels;->getSeries()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->txt_back:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/WordModels;->getBack()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->btn_catch_up:Landroid/widget/Button;

    iget-object v3, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/WordModels;->getCatch_up()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->btn_search:Landroid/widget/Button;

    iget-object v3, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/WordModels;->getSearch()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->btn_fav:Landroid/widget/Button;

    iget-object v3, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/WordModels;->getAdd_to_favorite()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b023d

    .line 29
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b0327

    .line 30
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->seekBar:Landroid/widget/SeekBar;

    const/16 v3, 0x64

    .line 31
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    const v0, 0x7f0b03c9

    .line 32
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->txt_current_time:Landroid/widget/TextView;

    const v0, 0x7f0b03c8

    .line 33
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->txt_current_program:Landroid/widget/TextView;

    const v0, 0x7f0b03e6

    .line 34
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->txt_next_time:Landroid/widget/TextView;

    const v0, 0x7f0b03e5

    .line 35
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->txt_next_program:Landroid/widget/TextView;

    const v0, 0x7f0b03d6

    .line 36
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->txt_group:Landroid/widget/TextView;

    const v0, 0x7f0b03c3

    .line 37
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->txt_channel_name:Landroid/widget/TextView;

    const v0, 0x7f0b00ba

    .line 38
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_image:Landroid/widget/ImageView;

    const v0, 0x7f0b01d0

    .line 39
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->image_def:Landroid/widget/ImageView;

    const v0, 0x7f0b008f

    .line 40
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->btn_full_epg:Landroid/widget/ImageButton;

    const v0, 0x7f0b0088

    .line 41
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->btn_back:Landroid/widget/ImageButton;

    const v0, 0x7f0b0090

    .line 42
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->btn_full_fav:Landroid/widget/ImageButton;

    const v0, 0x7f0b0091

    .line 43
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->btn_full_search:Landroid/widget/ImageButton;

    const v0, 0x7f0b0093

    .line 44
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->btn_lock:Landroid/widget/ImageButton;

    const v0, 0x7f0b009c

    .line 45
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->btn_resolution:Landroid/widget/ImageButton;

    const v0, 0x7f0b03f2

    .line 46
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->txt_resolution:Landroid/widget/TextView;

    const v0, 0x7f0b024d

    .line 47
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b0419

    .line 48
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->view_click:Landroid/view/View;

    const v0, 0x7f0b0095

    .line 49
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->btn_next:Landroid/widget/ImageButton;

    const v0, 0x7f0b0098

    .line 50
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->btn_play:Landroid/widget/ImageButton;

    const v0, 0x7f0b009a

    .line 51
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->btn_previous:Landroid/widget/ImageButton;

    const v0, 0x7f0b0423

    .line 52
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->volume_seekbar:Landroid/widget/SeekBar;

    const v0, 0x7f0b007a

    .line 53
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->bright_seekbar:Landroid/widget/SeekBar;

    .line 54
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->volume_seekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const-string v0, "audio"

    .line 55
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->audioManager:Landroid/media/AudioManager;

    .line 56
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->volume_seekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 57
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->volumeLevel:I

    .line 58
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 59
    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->volumeLevel:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float v1, v1, v0

    float-to-int v0, v1

    .line 60
    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->volume_seekbar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 61
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->bright_seekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 62
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->bright_seekbar:Landroid/widget/SeekBar;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 64
    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->bright_seekbar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 65
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->ly_surface:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->txt_live:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->txt_home:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->txt_series:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->txt_movie:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->btn_fav:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->btn_catch_up:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->btn_search:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->txt_back:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->btn_lock:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->btn_full_epg:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->btn_full_search:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->btn_full_fav:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->btn_resolution:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->btn_back:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->btn_next:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->btn_play:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->btn_previous:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->view_click:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->et_search:Landroid/widget/EditText;

    new-instance v1, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity$4;

    invoke-direct {v1, p0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity$4;-><init>(Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 85
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->getVideoSurfaceView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/nettv/livestore/activities/SearchActivity$$ExternalSyntheticLambda0;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lcom/nettv/livestore/activities/SearchActivity$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private isAdultChannel(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "adult"

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "xxx"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "porn"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1

    .line 3
    :cond_2
    sget-object p2, Lcom/nettv/livestore/apps/Constants;->xxx_live_categories:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$controlFav$4(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->categoryModels:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->category_pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fav_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channelAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object p1

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->categoryModels:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->category_pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CategoryModel;

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v1

    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceLiveOrder()I

    move-result v2

    const-string v3, ""

    invoke-virtual {p1, v0, v3, v1, v2}, Lcom/nettv/livestore/helper/RealmController;->getLiveChannelsByCategory(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmResults;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgChannels:Lio/realm/RealmResults;

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channelAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;->updateData(Ljava/util/List;I)V

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/RealmController;->getFavChannelNames()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceLiveFavChannels(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$controlLock$5(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->categoryModels:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->category_pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lock_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channelAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object p1

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->categoryModels:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->category_pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CategoryModel;

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v1

    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceLiveOrder()I

    move-result v2

    const-string v3, ""

    invoke-virtual {p1, v0, v3, v1, v2}, Lcom/nettv/livestore/helper/RealmController;->getLiveChannelsByCategory(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmResults;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgChannels:Lio/realm/RealmResults;

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channelAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;->updateData(Ljava/util/List;I)V

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/RealmController;->getLockChannelNames()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceLiveLockChannels(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$epgTimer$3(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgTime:I

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->getShortEpg(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->runNextEpgTicker()V

    return-void
.end method

.method private synthetic lambda$initView$8(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->is_full:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->hideInfoTicker:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->mInfoHideTimer()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->is_full:Z

    .line 7
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->setFull()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$mInfoHideTimer$6()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->hide_time:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->moveNexHideTicker()V

    return-void
.end method

.method private synthetic lambda$new$7(Landroidx/activity/result/ActivityResult;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 2
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, "is_changed"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "from_search"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->is_full:Z

    .line 5
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->setFull()V

    .line 6
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceCategoryPos()I

    move-result v0

    iput v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->category_pos:I

    .line 7
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceChannelPos()I

    move-result v0

    iput v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    .line 8
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v0

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->categoryModels:Ljava/util/List;

    iget v2, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->category_pos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/CategoryModel;

    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v2

    iget-object v3, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v3}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceLiveOrder()I

    move-result v3

    const-string v4, ""

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/nettv/livestore/helper/RealmController;->getLiveChannelsByCategory(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmResults;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgChannels:Lio/realm/RealmResults;

    .line 9
    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    invoke-virtual {v0}, Lio/realm/RealmResults;->size()I

    move-result v0

    sub-int/2addr v0, p1

    if-le v1, v0, :cond_0

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channelAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgChannels:Lio/realm/RealmResults;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    invoke-virtual {p1, v0, v1}, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;->updateData(Ljava/util/List;I)V

    .line 12
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgChannels:Lio/realm/RealmResults;

    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    invoke-virtual {p1, v0}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/EPGChannel;

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    .line 13
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result p1

    if-nez p1, :cond_1

    .line 14
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgTicker:Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getStream_id()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgTimer(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 16
    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->showEpgInfo(Ljava/util/List;)V

    .line 17
    :goto_0
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_name:Ljava/lang/String;

    .line 18
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->txt_name:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_favorite()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->showFavImageIcon(Z)V

    .line 20
    iget p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->changeChannelInfo(I)V

    .line 21
    :cond_2
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->playSelectedChannel(Lcom/nettv/livestore/models/EPGChannel;)V

    .line 22
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->recycler_channel:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 23
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->recycler_channel:Landroidx/recyclerview/widget/RecyclerView;

    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$onCreate$0(Lcom/nettv/livestore/models/EPGChannel;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->pre_channel_pos:I

    .line 2
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_5

    .line 3
    iget-boolean p3, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->is_full:Z

    if-nez p3, :cond_8

    .line 4
    iget-object p3, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->stream_id:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getStream_id()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_1

    .line 5
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->categoryModels:Ljava/util/List;

    iget p2, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->category_pos:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "resume_id"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iput p4, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    :cond_0
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->is_full:Z

    .line 8
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->setFull()V

    goto/16 :goto_2

    .line 9
    :cond_1
    iget-object p3, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->categoryModels:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->category_pos:I

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {p3}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object p3

    const-string v1, "all_id"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_id()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3, v1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->isAdultChannel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 10
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2, p4}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->showChannelLockDlgFragment(Lcom/nettv/livestore/models/EPGChannel;II)V

    goto/16 :goto_2

    .line 11
    :cond_2
    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_id()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3, v1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->isAdultChannel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_3

    iget-object p3, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->categoryModels:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->category_pos:I

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {p3}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object p3

    const-string v1, "lock_id"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_3

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_locked()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 12
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2, p4}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->showChannelLockDlgFragment(Lcom/nettv/livestore/models/EPGChannel;II)V

    goto/16 :goto_2

    .line 13
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    .line 14
    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->playSelectedChannel(Lcom/nettv/livestore/models/EPGChannel;)V

    .line 15
    iget-object p2, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result p2

    if-nez p2, :cond_4

    .line 16
    iget-object p2, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->handler:Landroid/os/Handler;

    iget-object p3, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgTicker:Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 17
    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getStream_id()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgTimer(Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_4
    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->showEpgInfo(Ljava/util/List;)V

    .line 19
    :goto_0
    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_name:Ljava/lang/String;

    .line 20
    iget-object p3, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->txt_name:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_favorite()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->showFavImageIcon(Z)V

    .line 22
    iget p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->changeChannelInfo(I)V

    goto :goto_2

    .line 23
    :cond_5
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 24
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->controlFav(Lcom/nettv/livestore/models/EPGChannel;I)V

    .line 25
    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_favorite()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->showFavImageIcon(Z)V

    goto :goto_2

    .line 26
    :cond_6
    iget-boolean p2, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->is_full:Z

    if-nez p2, :cond_8

    .line 27
    iget-object p2, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result p2

    if-nez p2, :cond_7

    .line 28
    iget-object p2, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->handler:Landroid/os/Handler;

    iget-object p3, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgTicker:Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 29
    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getStream_id()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgTimer(Ljava/lang/String;)V

    goto :goto_1

    .line 30
    :cond_7
    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->showEpgInfo(Ljava/util/List;)V

    .line 31
    :goto_1
    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_name:Ljava/lang/String;

    .line 32
    iget-object p3, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->txt_name:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_favorite()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->showFavImageIcon(Z)V

    .line 34
    iget p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->pre_channel_pos:I

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->changeChannelInfo(I)V

    :cond_8
    :goto_2
    return-object v0
.end method

.method private synthetic lambda$playSelectedChannel$2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->categoryModels:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->category_pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "resume_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channelAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channelAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;->setSelectedPosition(I)V

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->recycler_channel:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 5
    iput v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    :cond_0
    return-void
.end method

.method private synthetic lambda$showSearchDlgFragment$1(Lcom/nettv/livestore/models/EPGChannel;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->releaseMediaPlayer()V

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->et_search:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 3
    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->category_pos:I

    const/4 v2, 0x4

    const-string v3, ""

    if-le v0, v2, :cond_0

    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupCategory()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    if-ge v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupCategory()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupCategory()Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->category_pos:I

    add-int/lit8 v2, v2, -0x5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6
    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2, v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupChannels(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 7
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Lcom/nettv/livestore/helper/RealmController;->getEpgChannelsByNameArray(Ljava/util/List;Ljava/lang/String;)Lio/realm/RealmResults;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgChannels:Lio/realm/RealmResults;

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v0

    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->categoryModels:Ljava/util/List;

    iget v4, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->category_pos:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nettv/livestore/models/CategoryModel;

    iget-object v4, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v4}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v4

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/nettv/livestore/helper/RealmController;->getLiveChannelsByCategory(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmResults;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgChannels:Lio/realm/RealmResults;

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->et_search:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    :cond_2
    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->getRealChannelPosition(Lcom/nettv/livestore/models/EPGChannel;)I

    move-result v0

    iput v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    .line 11
    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->recycler_channel:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 12
    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->playSelectedChannel(Lcom/nettv/livestore/models/EPGChannel;)V

    .line 13
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 14
    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->showEpgInfo(Ljava/util/List;)V

    goto :goto_1

    .line 15
    :cond_3
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->stream_id:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->getShortEpg(Ljava/lang/String;)V

    .line 16
    :goto_1
    iget p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->changeChannelInfo(I)V

    .line 17
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_favorite()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->showFavImageIcon(Z)V

    .line 18
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->hideInfoTicker:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 20
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->mInfoHideTimer()V

    return-void
.end method

.method private mInfoHideTimer()V
    .locals 2

    const/16 v0, 0xa

    .line 1
    iput v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->hide_time:I

    .line 2
    new-instance v0, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->hideInfoTicker:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;

    .line 3
    invoke-virtual {v0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;->run()V

    return-void
.end method

.method private moveNexHideTicker()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->hide_time:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->hide_time:I

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    .line 3
    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->hideInfoTicker:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private playNextChannel()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgChannels:Lio/realm/RealmResults;

    invoke-virtual {v1}, Lio/realm/RealmResults;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    if-ge v0, v1, :cond_0

    .line 2
    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    goto :goto_0

    .line 3
    :cond_0
    iput v3, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgChannels:Lio/realm/RealmResults;

    invoke-virtual {v0}, Lio/realm/RealmResults;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgChannels:Lio/realm/RealmResults;

    invoke-virtual {v1}, Lio/realm/RealmResults;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->categoryModels:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->category_pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "all_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgChannels:Lio/realm/RealmResults;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    invoke-virtual {v0, v1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_id()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgChannels:Lio/realm/RealmResults;

    iget v4, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    invoke-virtual {v1, v4}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->isAdultChannel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgChannels:Lio/realm/RealmResults;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    invoke-virtual {v0, v1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/EPGChannel;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    invoke-direct {p0, v0, v1, v2}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->showChannelLockDlgFragment(Lcom/nettv/livestore/models/EPGChannel;II)V

    goto/16 :goto_2

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgChannels:Lio/realm/RealmResults;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    invoke-virtual {v0, v1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_id()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgChannels:Lio/realm/RealmResults;

    iget v4, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    invoke-virtual {v1, v4}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->isAdultChannel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->categoryModels:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->category_pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lock_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgChannels:Lio/realm/RealmResults;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    invoke-virtual {v0, v1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->is_locked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgChannels:Lio/realm/RealmResults;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    invoke-virtual {v0, v1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/EPGChannel;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    invoke-direct {p0, v0, v1, v2}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->showChannelLockDlgFragment(Lcom/nettv/livestore/models/EPGChannel;II)V

    goto :goto_2

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgChannels:Lio/realm/RealmResults;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    invoke-virtual {v0, v1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/EPGChannel;

    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->playSelectedChannel(Lcom/nettv/livestore/models/EPGChannel;)V

    .line 10
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v0

    if-nez v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgTicker:Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->stream_id:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgTimer(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->showEpgInfo(Ljava/util/List;)V

    .line 14
    :goto_1
    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->changeChannelInfo(I)V

    .line 15
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    .line 16
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->hideInfoTicker:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 18
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->mInfoHideTimer()V

    .line 19
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->txt_name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->recycler_channel:Landroidx/recyclerview/widget/RecyclerView;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method private playPreviousChannel()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    sub-int/2addr v0, v1

    .line 2
    iput v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgChannels:Lio/realm/RealmResults;

    invoke-virtual {v0}, Lio/realm/RealmResults;->size()I

    move-result v0

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgChannels:Lio/realm/RealmResults;

    invoke-virtual {v0}, Lio/realm/RealmResults;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgChannels:Lio/realm/RealmResults;

    invoke-virtual {v2}, Lio/realm/RealmResults;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->categoryModels:Ljava/util/List;

    iget v2, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->category_pos:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "all_id"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgChannels:Lio/realm/RealmResults;

    iget v2, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    invoke-virtual {v0, v2}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_id()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgChannels:Lio/realm/RealmResults;

    iget v3, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    invoke-virtual {v2, v3}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->isAdultChannel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgChannels:Lio/realm/RealmResults;

    iget v2, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    invoke-virtual {v0, v2}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/EPGChannel;

    iget v2, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    invoke-direct {p0, v0, v2, v1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->showChannelLockDlgFragment(Lcom/nettv/livestore/models/EPGChannel;II)V

    goto/16 :goto_2

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgChannels:Lio/realm/RealmResults;

    iget v2, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    invoke-virtual {v0, v2}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_id()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgChannels:Lio/realm/RealmResults;

    iget v3, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    invoke-virtual {v2, v3}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->isAdultChannel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->categoryModels:Ljava/util/List;

    iget v2, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->category_pos:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "lock_id"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgChannels:Lio/realm/RealmResults;

    iget v2, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    invoke-virtual {v0, v2}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->is_locked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgChannels:Lio/realm/RealmResults;

    iget v2, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    invoke-virtual {v0, v2}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/EPGChannel;

    iget v2, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    invoke-direct {p0, v0, v2, v1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->showChannelLockDlgFragment(Lcom/nettv/livestore/models/EPGChannel;II)V

    goto :goto_2

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgChannels:Lio/realm/RealmResults;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    invoke-virtual {v0, v1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/EPGChannel;

    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->playSelectedChannel(Lcom/nettv/livestore/models/EPGChannel;)V

    .line 10
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v0

    if-nez v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgTicker:Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->stream_id:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgTimer(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->showEpgInfo(Ljava/util/List;)V

    .line 14
    :goto_1
    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->changeChannelInfo(I)V

    .line 15
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->txt_name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    .line 17
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    :cond_4
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->hideInfoTicker:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 19
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->mInfoHideTimer()V

    .line 20
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->recycler_channel:Landroidx/recyclerview/widget/RecyclerView;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method private playSelectedChannel(Lcom/nettv/livestore/models/EPGChannel;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->category_pos:I

    invoke-virtual {v0, v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceCategoryPos(I)V

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    invoke-virtual {v0, v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceChannelPos(I)V

    .line 3
    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    .line 4
    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getStream_id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->stream_id:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_name:Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->is_favorite()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->showFavImageIcon(Z)V

    .line 7
    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_locked()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->showLockImageIcon(Z)V

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->content_url:Ljava/lang/String;

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceServerUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceUsername()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferencePassword()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->stream_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v3}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceLiveStreamFormat()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v1, v2, v3}, Lcom/nettv/livestore/helper/GetSharedInfo;->getLiveChannelUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->content_url:Ljava/lang/String;

    .line 11
    :goto_0
    sget-object p1, Lcom/nettv/livestore/apps/Constants;->xxx_live_categories:Ljava/util/List;

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->categoryModels:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->category_pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_id()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->isAdultChannel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 12
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object p1

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;)V

    invoke-virtual {p1, v1, v0, v2}, Lcom/nettv/livestore/helper/RealmController;->addToRecentChannels(Ljava/lang/String;ZLcom/nettv/livestore/helper/RealmChangeItemListener;)V

    goto :goto_1

    .line 13
    :cond_1
    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->showLockImageIcon(Z)V

    .line 14
    :goto_1
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->releaseMediaPlayer()V

    .line 15
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->content_url:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->playVideo(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private playVideo(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->release()V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->image_def:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->image_def:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    :cond_1
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
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    .line 10
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->createMediaSourceFactory()Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setMediaSourceFactory(Lcom/google/android/exoplayer2/source/MediaSource$Factory;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 11
    invoke-direct {p0, v0, v1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->setRenderersFactory(Lcom/google/android/exoplayer2/ExoPlayer$Builder;Z)V

    .line 12
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->build()Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 13
    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->trackSelectionParameters:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/Player;->setTrackSelectionParameters(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    .line 14
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    new-instance v2, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity$2;

    invoke-direct {v2, p0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity$2;-><init>(Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;)V

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/ExoPlayer;->addAnalyticsListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    .line 15
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    new-instance v2, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity$PlayerEventListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity$PlayerEventListener;-><init>(Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity$1;)V

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/Player;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 16
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    new-instance v2, Lcom/google/android/exoplayer2/util/EventLogger;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/util/EventLogger;-><init>()V

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/ExoPlayer;->addAnalyticsListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    .line 17
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    sget-object v2, Lcom/google/android/exoplayer2/audio/AudioAttributes;->DEFAULT:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    invoke-interface {v0, v2, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;Z)V

    .line 18
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    .line 19
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    .line 20
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player;->setMediaItem(Lcom/google/android/exoplayer2/MediaItem;)V

    .line 21
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->prepare()V

    .line 22
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->play()V

    return-void
.end method

.method private releaseMediaPlayer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->stop()V

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->release()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 5
    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    return-void
.end method

.method private runNextEpgTicker()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgTime:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgTime:I

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    add-long/2addr v0, v2

    .line 3
    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgTicker:Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private saveCategoryAndChannelPosition()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v0

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->categoryModels:Ljava/util/List;

    iget v2, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->category_pos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/CategoryModel;

    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v2

    iget-object v3, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v3}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceLiveOrder()I

    move-result v3

    const-string v4, ""

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/nettv/livestore/helper/RealmController;->getLiveChannelsByCategory(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmResults;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-virtual {v0}, Lio/realm/RealmResults;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 3
    iget-object v3, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v4}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0, v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceChannelPos(I)V

    return-void
.end method

.method private searchChannelsInCategory(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->category_pos:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupCategory()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupCategory()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupCategory()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->category_pos:I

    add-int/lit8 v1, v1, -0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1, v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupChannels(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/nettv/livestore/helper/RealmController;->getEpgChannelsByNameArray(Ljava/util/List;Ljava/lang/String;)Lio/realm/RealmResults;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgChannels:Lio/realm/RealmResults;

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v0

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->categoryModels:Ljava/util/List;

    iget v2, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->category_pos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/CategoryModel;

    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v2

    iget-object v3, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v3}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceLiveOrder()I

    move-result v3

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/nettv/livestore/helper/RealmController;->getLiveChannelsByCategory(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmResults;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgChannels:Lio/realm/RealmResults;

    .line 7
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channelAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgChannels:Lio/realm/RealmResults;

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;->updateData(Ljava/util/List;I)V

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->recycler_channel:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method private setCurrentEpgEvent(Ljava/util/List;)V
    .locals 10
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

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->txt_current_program:Landroid/widget/TextView;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nettv/livestore/models/CatchUpEpg;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/CatchUpEpg;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nettv/livestore/utils/Utils;->decode64String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->txt_current_time:Landroid/widget/TextView;

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
    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->seekBar:Landroid/widget/SeekBar;

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

    if-le v1, v2, :cond_0

    .line 6
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->txt_next_program:Landroid/widget/TextView;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/CatchUpEpg;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/CatchUpEpg;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nettv/livestore/utils/Utils;->decode64String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->txt_next_time:Landroid/widget/TextView;

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

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->txt_next_time:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->txt_next_program:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getNo_information()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->txt_current_time:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/WordModels;->getNo_information()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->txt_current_program:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 13
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->txt_next_time:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->txt_next_program:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getNo_information()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private setFull()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->is_full:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->btn_catch_up:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->btn_fav:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->btn_search:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->recycler_channel:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 7
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->hideInfoTicker:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->mInfoHideTimer()V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->btn_catch_up:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->btn_fav:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->btn_search:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->hideInfoTicker:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->recycler_channel:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channelAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    invoke-virtual {v0, v1}, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;->setSelectedPosition(I)V

    .line 17
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->recycler_channel:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 18
    :goto_0
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 19
    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->main_lay:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 20
    iget-boolean v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->is_full:Z

    const v2, 0x7f0b01b6

    const v3, 0x7f0b01b5

    const v4, 0x7f0b0410

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v4, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelinePercent(IF)V

    .line 22
    invoke-virtual {v0, v3, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelinePercent(IF)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 23
    invoke-virtual {v0, v2, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelinePercent(IF)V

    goto :goto_1

    :cond_2
    const/high16 v1, 0x3f000000    # 0.5f

    .line 24
    invoke-virtual {v0, v4, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelinePercent(IF)V

    const v1, 0x3dcccccd    # 0.1f

    .line 25
    invoke-virtual {v0, v3, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelinePercent(IF)V

    const v1, 0x3f19999a    # 0.6f

    .line 26
    invoke-virtual {v0, v2, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelinePercent(IF)V

    .line 27
    :goto_1
    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->main_lay:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method private setRenderersFactory(Lcom/google/android/exoplayer2/ExoPlayer$Builder;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p2}, Lcom/nettv/livestore/utils/DemoUtil;->buildRenderersFactory(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/RenderersFactory;

    move-result-object p2

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setRenderersFactory(Lcom/google/android/exoplayer2/RenderersFactory;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    return-void
.end method

.method private showChannelLockDlgFragment(Lcom/nettv/livestore/models/EPGChannel;II)V
    .locals 4

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

    if-eqz v3, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-static {v1, v3, p1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceParentPassword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nettv/livestore/dlgfragment/LockDlgFragment;->newInstance(Ljava/lang/String;)Lcom/nettv/livestore/dlgfragment/LockDlgFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->lockDlgFragment:Lcom/nettv/livestore/dlgfragment/LockDlgFragment;

    .line 6
    new-instance v3, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity$1;

    invoke-direct {v3, p0, p3, p2, p1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity$1;-><init>(Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;IILcom/nettv/livestore/models/EPGChannel;)V

    invoke-virtual {v1, v3}, Lcom/nettv/livestore/dlgfragment/LockDlgFragment;->setOnPinEventListener(Lcom/nettv/livestore/dlgfragment/LockDlgFragment$OnPinEventListener;)V

    .line 7
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->lockDlgFragment:Lcom/nettv/livestore/dlgfragment/LockDlgFragment;

    invoke-virtual {p1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showEpgInfo(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/CatchUpEpg;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgAdapter:Lcom/nettv/livestore/adapter/EpgRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/nettv/livestore/adapter/EpgRecyclerAdapter;->setEpgList(Ljava/util/List;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->setCurrentEpgEvent(Ljava/util/List;)V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgAdapter:Lcom/nettv/livestore/adapter/EpgRecyclerAdapter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/adapter/EpgRecyclerAdapter;->setEpgList(Ljava/util/List;)V

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->setCurrentEpgEvent(Ljava/util/List;)V

    :goto_1
    return-void
.end method

.method private showFavImageIcon(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->btn_fav:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getRemove_favorites()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->btn_full_fav:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0602f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->btn_fav:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getAdd_to_favorite()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->btn_full_fav:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0602f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :goto_0
    return-void
.end method

.method private showLockImageIcon(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->btn_lock:Landroid/widget/ImageButton;

    const v0, 0x7f080127

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->btn_lock:Landroid/widget/ImageButton;

    const v0, 0x7f080126

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private showSearchDlgFragment()V
    .locals 5

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

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-static {v1, v3, v0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->categoryModels:Ljava/util/List;

    iget v3, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->category_pos:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/CategoryModel;

    iget v3, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->category_pos:I

    iget-object v4, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v4}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v4

    invoke-static {p0, v1, v3, v4}, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->newInstance(Landroid/content/Context;Lcom/nettv/livestore/models/CategoryModel;IZ)Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->searchDlgFragment:Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;

    .line 6
    new-instance v3, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;)V

    invoke-virtual {v1, v3}, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->setSelectCurrentChannelListener(Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment$SelectCurrentChannelListener;)V

    .line 7
    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->searchDlgFragment:Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "resume_id"

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 2
    :sswitch_0
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_8

    .line 3
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->hideInfoTicker:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 5
    :sswitch_1
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->goToSeriesActivity()V

    goto/16 :goto_0

    .line 6
    :sswitch_2
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->goToVodActivity()V

    goto/16 :goto_0

    .line 7
    :sswitch_3
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->releaseMediaPlayer()V

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->categoryModels:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->category_pos:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    if-eqz p1, :cond_0

    .line 9
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->saveCategoryAndChannelPosition()V

    .line 10
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "is_changed"

    const-string v1, "home"

    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 12
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 14
    :sswitch_4
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->categoryModels:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->category_pos:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    if-eqz p1, :cond_1

    .line 15
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->saveCategoryAndChannelPosition()V

    .line 16
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 17
    :sswitch_5
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->goToSearchActivity()V

    goto/16 :goto_0

    .line 18
    :sswitch_6
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz p1, :cond_8

    .line 19
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 20
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->getResizeMode()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 21
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setResizeMode(I)V

    goto/16 :goto_0

    .line 22
    :cond_2
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setResizeMode(I)V

    goto/16 :goto_0

    .line 23
    :sswitch_7
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->playPreviousChannel()V

    goto/16 :goto_0

    .line 24
    :sswitch_8
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz p1, :cond_8

    .line 25
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 26
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1, v3}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    .line 27
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->btn_play:Landroid/widget/ImageButton;

    const v0, 0x7f080133

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 28
    :cond_3
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1, v2}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    .line 29
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->btn_play:Landroid/widget/ImageButton;

    const v0, 0x7f080132

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 30
    :sswitch_9
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->playNextChannel()V

    goto/16 :goto_0

    .line 31
    :sswitch_a
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    if-eqz p1, :cond_8

    .line 32
    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_id()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->isAdultChannel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 33
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getChannel_locked_default()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 34
    :cond_4
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_locked()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 35
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    const/4 v1, 0x4

    invoke-direct {p0, p1, v0, v1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->showChannelLockDlgFragment(Lcom/nettv/livestore/models/EPGChannel;II)V

    goto/16 :goto_0

    .line 36
    :cond_5
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    invoke-direct {p0, p1, v0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->controlLock(Lcom/nettv/livestore/models/EPGChannel;I)V

    .line 37
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_locked()Z

    move-result p1

    xor-int/2addr p1, v2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->showLockImageIcon(Z)V

    .line 38
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_locked()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 39
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getChannel_unlocked()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 40
    :cond_6
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getChannel_locked()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 41
    :sswitch_b
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 42
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->showSearchDlgFragment()V

    goto :goto_0

    .line 43
    :sswitch_c
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    if-eqz p1, :cond_8

    .line 44
    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    invoke-direct {p0, p1, v0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->controlFav(Lcom/nettv/livestore/models/EPGChannel;I)V

    .line 45
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_favorite()Z

    move-result p1

    xor-int/2addr p1, v2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->showFavImageIcon(Z)V

    .line 46
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_favorite()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 47
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getChannel_removed_from_fav()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 48
    :cond_7
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getChannel_added_to_fav()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 49
    :sswitch_d
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->goToCatchupActivity()V

    goto :goto_0

    .line 50
    :sswitch_e
    iput-boolean v3, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->is_full:Z

    .line 51
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->setFull()V

    :cond_8
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0088 -> :sswitch_e
        0x7f0b008a -> :sswitch_d
        0x7f0b008d -> :sswitch_c
        0x7f0b008f -> :sswitch_d
        0x7f0b0090 -> :sswitch_c
        0x7f0b0091 -> :sswitch_b
        0x7f0b0093 -> :sswitch_a
        0x7f0b0095 -> :sswitch_9
        0x7f0b0098 -> :sswitch_8
        0x7f0b009a -> :sswitch_7
        0x7f0b009c -> :sswitch_6
        0x7f0b009f -> :sswitch_5
        0x7f0b03bc -> :sswitch_4
        0x7f0b03d9 -> :sswitch_3
        0x7f0b03dc -> :sswitch_4
        0x7f0b03e2 -> :sswitch_2
        0x7f0b03f7 -> :sswitch_1
        0x7f0b0419 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e0025

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 3
    invoke-static {p0}, Lcom/nettv/livestore/utils/Utils;->FullScreenCall(Landroid/app/Activity;)V

    .line 4
    new-instance p1, Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-direct {p1, p0}, Lcom/nettv/livestore/helper/PreferenceHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    .line 5
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->getWordModel(Landroid/content/Context;)Lcom/nettv/livestore/models/WordModels;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 6
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->initView()V

    .line 7
    invoke-static {p0}, Lcom/nettv/livestore/utils/DemoUtil;->getDataSourceFactory(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 8
    new-instance p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

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

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->trackSelectionParameters:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "is_full"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->is_full:Z

    .line 12
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceInvisibleLiveCategories()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/nettv/livestore/apps/Constants;->getLiveGroupModels(Ljava/util/List;Landroid/content/Context;)V

    .line 13
    sget-object p1, Lcom/nettv/livestore/apps/LTVApp;->live_categories_filter:Ljava/util/List;

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->categoryModels:Ljava/util/List;

    .line 14
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceCategoryPos()I

    move-result p1

    iput p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->category_pos:I

    .line 15
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->categoryModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    .line 16
    iput v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->category_pos:I

    .line 17
    :cond_0
    iget p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->category_pos:I

    const/4 v0, 0x4

    const-string v1, ""

    if-le p1, v0, :cond_1

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupCategory()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-ge p1, v0, :cond_1

    .line 18
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupCategory()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 19
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupCategory()Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->category_pos:I

    add-int/lit8 v0, v0, -0x5

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 20
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupChannels(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 21
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/nettv/livestore/helper/RealmController;->getEpgChannelsByNameArray(Ljava/util/List;Ljava/lang/String;)Lio/realm/RealmResults;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgChannels:Lio/realm/RealmResults;

    goto :goto_0

    .line 22
    :cond_1
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object p1

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->categoryModels:Ljava/util/List;

    iget v4, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->category_pos:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CategoryModel;

    iget-object v4, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v4}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v4

    iget-object v5, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v5}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceLiveOrder()I

    move-result v5

    invoke-virtual {p1, v0, v1, v4, v5}, Lcom/nettv/livestore/helper/RealmController;->getLiveChannelsByCategory(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmResults;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgChannels:Lio/realm/RealmResults;

    .line 23
    :cond_2
    :goto_0
    iput v3, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    .line 24
    new-instance p1, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgChannels:Lio/realm/RealmResults;

    new-instance v1, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, v2}, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p1, p0, v0, v3, v1}, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILkotlin/jvm/functions/Function4;)V

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channelAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;

    .line 25
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->recycler_channel:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 26
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->recycler_channel:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channelAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 27
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->recycler_channel:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 28
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->recycler_channel:Landroidx/recyclerview/widget/RecyclerView;

    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 29
    new-instance p1, Lcom/nettv/livestore/adapter/EpgRecyclerAdapter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/nettv/livestore/adapter/EpgRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgAdapter:Lcom/nettv/livestore/adapter/EpgRecyclerAdapter;

    .line 30
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->recycler_epg:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 31
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->recycler_epg:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgAdapter:Lcom/nettv/livestore/adapter/EpgRecyclerAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 32
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->recycler_epg:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 33
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgChannels:Lio/realm/RealmResults;

    invoke-virtual {p1}, Lio/realm/RealmResults;->size()I

    move-result p1

    if-lez p1, :cond_6

    .line 34
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->setFull()V

    .line 35
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgChannels:Lio/realm/RealmResults;

    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    invoke-virtual {p1, v0}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_id()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgChannels:Lio/realm/RealmResults;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    invoke-virtual {v0, v1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->isAdultChannel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 36
    iput v3, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    .line 37
    :cond_3
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->categoryModels:Ljava/util/List;

    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->category_pos:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "lock_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgChannels:Lio/realm/RealmResults;

    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    invoke-virtual {p1, v0}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_locked()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 38
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgChannels:Lio/realm/RealmResults;

    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    invoke-virtual {p1, v0}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/EPGChannel;

    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    invoke-direct {p0, p1, v0, v2}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->showChannelLockDlgFragment(Lcom/nettv/livestore/models/EPGChannel;II)V

    goto :goto_2

    .line 39
    :cond_4
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgChannels:Lio/realm/RealmResults;

    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    invoke-virtual {p1, v0}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/EPGChannel;

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->playSelectedChannel(Lcom/nettv/livestore/models/EPGChannel;)V

    .line 40
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgChannels:Lio/realm/RealmResults;

    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    invoke-virtual {p1, v0}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getStream_id()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->stream_id:Ljava/lang/String;

    .line 41
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result p1

    if-nez p1, :cond_5

    .line 42
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgTicker:Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 43
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->stream_id:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgTimer(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    .line 44
    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->showEpgInfo(Ljava/util/List;)V

    .line 45
    :goto_1
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgChannels:Lio/realm/RealmResults;

    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    invoke-virtual {p1, v0}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_name:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->txt_name:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->epgChannels:Lio/realm/RealmResults;

    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    invoke-virtual {p1, v0}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_favorite()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->showFavImageIcon(Z)V

    .line 48
    iget p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->channel_pos:I

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->changeChannelInfo(I)V

    :cond_6
    :goto_2
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 2
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->onPause()V

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->releaseMediaPlayer()V

    :cond_1
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    if-eqz p3, :cond_3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const p3, 0x7f0b007a

    const/4 v0, 0x0

    if-eq p1, p3, :cond_1

    const p3, 0x7f0b0423

    if-eq p1, p3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->audioManager:Landroid/media/AudioManager;

    const/4 p3, 0x3

    invoke-virtual {p1, p3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p1

    mul-int p1, p1, p2

    .line 3
    div-int/lit8 p1, p1, 0x64

    .line 4
    iget-object p2, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p2, p3, p1, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 5
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x17

    if-lt p1, p3, :cond_3

    .line 6
    invoke-static {p0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 7
    iget-boolean p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->is_system_setting:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->is_system_setting:Z

    .line 9
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.action.MANAGE_WRITE_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "package:"

    .line 10
    invoke-static {p2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 12
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p3, "screen_brightness_mode"

    invoke-static {p1, p3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p3, "screen_brightness"

    invoke-static {p1, p3, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p3

    int-to-float p2, p2

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p2, v0

    .line 17
    iput p2, p3, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 18
    invoke-virtual {p1, p3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 2
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->onPause()V

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->releaseMediaPlayer()V

    :cond_1
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
