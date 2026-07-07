.class public Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "LiveMobileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$PlayerEventListener;
    }
.end annotation


# static fields
.field private static final KEY_TRACK_SELECTION_PARAMETERS:Ljava/lang/String; = "track_selection_parameters"


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

.field public categoryAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;

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

.field public recycler_category:Landroidx/recyclerview/widget/RecyclerView;

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
.method public static synthetic $r8$lambda$8vtnZEqQwSdv28_HDZtJDgCdQPU(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;Landroidx/activity/result/ActivityResult;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->lambda$new$8(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9rcGfZzCaPUuS1c9MYRhutWdO54(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->lambda$controlLock$6(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$DTk2bmbp6z8hHu3aHGmRDkuQGHs(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;Lcom/nettv/livestore/models/EPGChannel;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lkotlin/Unit;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->lambda$onCreate$1(Lcom/nettv/livestore/models/EPGChannel;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Ev3ko7_xwNKbd8pwcoQq2T9Ir4A(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->lambda$playSelectedChannel$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$H6cN70n2Q85iP28yVklsock-O9g(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;Lcom/nettv/livestore/models/EPGChannel;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->lambda$showSearchDlgFragment$2(Lcom/nettv/livestore/models/EPGChannel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Otd85R-nIJ11im609cOisVZxm8Q(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->lambda$controlFav$5(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$TYUl6SDk8Cb4Q_RdK3SPxo39BjI(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->lambda$onCreate$0(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XPNKEoKknNp4QCfOx9O03hfkDT8(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->lambda$initView$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gX3TvDuZcIH9W1FKsJlxnBvnYvU(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->lambda$mInfoHideTimer$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$jR7UR_NIxV3iopYfk5Mg6NECv8U(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->lambda$epgTimer$4(Ljava/lang/String;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->category_pos:I

    iput v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    iput v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->pre_channel_pos:I

    iput v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->error_count:I

    const-string v1, ""

    .line 3
    iput-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->stream_id:Ljava/lang/String;

    .line 4
    iput-boolean v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->is_full:Z

    .line 5
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->handler:Landroid/os/Handler;

    .line 6
    iput-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->categoryName:Ljava/lang/String;

    .line 7
    iput-boolean v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->is_system_setting:Z

    .line 8
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->someActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public static synthetic access$000(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;Lcom/nettv/livestore/models/EPGChannel;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->playSelectedChannel(Lcom/nettv/livestore/models/EPGChannel;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgTimer(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->releaseMediaPlayer()V

    return-void
.end method

.method public static synthetic access$1100(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->playVideo(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->searchChannelsInCategory(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->showEpgInfo(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->showFavImageIcon(Z)V

    return-void
.end method

.method public static synthetic access$400(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->changeChannelInfo(I)V

    return-void
.end method

.method public static synthetic access$500(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->mInfoHideTimer()V

    return-void
.end method

.method public static synthetic access$600(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->getShortEpg(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$700(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;Lcom/nettv/livestore/models/EPGChannel;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->controlLock(Lcom/nettv/livestore/models/EPGChannel;I)V

    return-void
.end method

.method public static synthetic access$800(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->showLockImageIcon(Z)V

    return-void
.end method

.method private changeChannelInfo(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->txt_group:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->categoryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->txt_channel_name:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgChannels:Lio/realm/RealmResults;

    invoke-virtual {v2, p1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/EPGChannel;->getNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgChannels:Lio/realm/RealmResults;

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
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgChannels:Lio/realm/RealmResults;

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

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_image:Landroid/widget/ImageView;

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

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_image:Landroid/widget/ImageView;

    .line 12
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :goto_7a
    return-void
.end method

.method private controlFav(Lcom/nettv/livestore/models/EPGChannel;I)V
    .registers 7

    if-eqz p1, :cond_2f

    .line 1
    sget-object v0, Lcom/nettv/livestore/apps/Constants;->xxx_live_categories:Ljava/util/List;

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->categoryModels:Ljava/util/List;

    iget v2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->category_pos:I

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

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_favorite()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    new-instance v2, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$$ExternalSyntheticLambda1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p2, v3}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$$ExternalSyntheticLambda1;-><init>(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;II)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/nettv/livestore/helper/RealmController;->addToFavChannels(Ljava/lang/String;ZLcom/nettv/livestore/helper/RealmChangeItemListener;)V

    :cond_2f
    return-void
.end method

.method private controlLock(Lcom/nettv/livestore/models/EPGChannel;I)V
    .registers 7

    if-eqz p1, :cond_2e

    .line 1
    sget-object v0, Lcom/nettv/livestore/apps/Constants;->xxx_live_categories:Ljava/util/List;

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->categoryModels:Ljava/util/List;

    iget v2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->category_pos:I

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

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_locked()Z

    move-result p1

    const/4 v2, 0x1

    xor-int/2addr p1, v2

    new-instance v3, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p2, v2}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$$ExternalSyntheticLambda1;-><init>(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;II)V

    invoke-virtual {v0, v1, p1, v3}, Lcom/nettv/livestore/helper/RealmController;->addToLockChannels(Ljava/lang/String;ZLcom/nettv/livestore/helper/RealmChangeItemListener;)V

    :cond_2e
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

    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

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
    iput v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgTime:I

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;

    const/16 v1, 0xd

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgTicker:Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;->run()V

    return-void
.end method

.method private getRealChannelPosition(Lcom/nettv/livestore/models/EPGChannel;)I
    .registers 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgChannels:Lio/realm/RealmResults;

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
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceServerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nettv/livestore/remote/RetroClass;->getAPIService(Ljava/lang/String;)Lcom/nettv/livestore/remote/APIService;

    move-result-object v0

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceUsername()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferencePassword()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/nettv/livestore/remote/APIService;->get_short_epg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$4;

    invoke-direct {v0, p0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$4;-><init>(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    goto :goto_27

    :catch_23
    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->showEpgInfo(Ljava/util/List;)V

    :goto_27
    return-void
.end method

.method private goToAddGroupActivity()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->categoryModels:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->category_pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "resume_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    if-eqz v0, :cond_1d

    .line 2
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->saveCategoryAndChannelPosition()V

    .line 3
    :cond_1d
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->releaseMediaPlayer()V

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->someActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/nettv/livestore/activities/AddGroupActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method private goToCatchupActivity()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getNo_epg_avaliable()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_32

    .line 3
    :cond_17
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    if-eqz v0, :cond_32

    .line 4
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->releaseMediaPlayer()V

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nettv/livestore/apps/LTVApp;->channelName:Ljava/lang/String;

    .line 6
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nettv/livestore/activities/CatchUpActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7
    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->someActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    :cond_32
    :goto_32
    return-void
.end method

.method private goToSearchActivity()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->releaseMediaPlayer()V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nettv/livestore/activities/SearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "is_live"

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4
    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->someActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method private goToSeriesActivity()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->releaseMediaPlayer()V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nettv/livestore/activities/SeriesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->categoryModels:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->category_pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "resume_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    if-eqz v0, :cond_2a

    .line 4
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->saveCategoryAndChannelPosition()V

    .line 5
    :cond_2a
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private goToVodActivity()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->releaseMediaPlayer()V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nettv/livestore/activities/MovieActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->categoryModels:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->category_pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "resume_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    if-eqz v0, :cond_2a

    .line 4
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->saveCategoryAndChannelPosition()V

    .line 5
    :cond_2a
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

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->main_lay:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b02dd

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    const/4 v1, 0x3

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setResizeMode(I)V

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->getSubtitleView()Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setApplyEmbeddedStyles(Z)V

    .line 5
    new-instance v0, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

    iget-object v3, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v3}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceSubtitleColor()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    iget-object v3, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

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
    iget-object v3, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->getSubtitleView()Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-result-object v3

    iget-object v4, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v4}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceSubtitleSize()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v1, v4}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setFixedTextSize(IF)V

    .line 7
    iget-object v3, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->getSubtitleView()Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setStyle(Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;)V

    const v0, 0x7f0b03e8

    .line 8
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v0, 0x7f0b03d9

    .line 9
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->txt_home:Landroid/widget/TextView;

    const v0, 0x7f0b03dc

    .line 10
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->txt_live:Landroid/widget/TextView;

    const v0, 0x7f0b03e2

    .line 11
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->txt_movie:Landroid/widget/TextView;

    const v0, 0x7f0b03f7

    .line 12
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->txt_series:Landroid/widget/TextView;

    const v0, 0x7f0b03e4

    .line 13
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->txt_name:Landroid/widget/TextView;

    const v0, 0x7f0b012d

    .line 14
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->et_search:Landroid/widget/EditText;

    const v0, 0x7f0b02ea

    .line 15
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->recycler_category:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0b02eb

    .line 16
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->recycler_channel:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0b0255

    .line 17
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->ly_surface:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b02ee

    .line 18
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->recycler_epg:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0b008d

    .line 19
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->btn_fav:Landroid/widget/Button;

    const v0, 0x7f0b008a

    .line 20
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->btn_catch_up:Landroid/widget/Button;

    const v0, 0x7f0b009f

    .line 21
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->btn_search:Landroid/widget/Button;

    const v0, 0x7f0b0093

    .line 22
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->btn_lock:Landroid/widget/ImageButton;

    .line 23
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->txt_home:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/WordModels;->getHome()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->txt_live:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/WordModels;->getLive_tv()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->txt_movie:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/WordModels;->getMovies()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->txt_series:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/WordModels;->getSeries()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->btn_catch_up:Landroid/widget/Button;

    iget-object v3, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/WordModels;->getCatch_up()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->btn_search:Landroid/widget/Button;

    iget-object v3, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/WordModels;->getSearch()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->btn_fav:Landroid/widget/Button;

    iget-object v3, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/WordModels;->getAdd_to_favorite()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b023d

    .line 30
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b0327

    .line 31
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->seekBar:Landroid/widget/SeekBar;

    const/16 v3, 0x64

    .line 32
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    const v0, 0x7f0b03c9

    .line 33
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->txt_current_time:Landroid/widget/TextView;

    const v0, 0x7f0b03c8

    .line 34
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->txt_current_program:Landroid/widget/TextView;

    const v0, 0x7f0b03e6

    .line 35
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->txt_next_time:Landroid/widget/TextView;

    const v0, 0x7f0b03e5

    .line 36
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->txt_next_program:Landroid/widget/TextView;

    const v0, 0x7f0b03d6

    .line 37
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->txt_group:Landroid/widget/TextView;

    const v0, 0x7f0b03c3

    .line 38
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->txt_channel_name:Landroid/widget/TextView;

    const v0, 0x7f0b00ba

    .line 39
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_image:Landroid/widget/ImageView;

    const v0, 0x7f0b01d0

    .line 40
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->image_def:Landroid/widget/ImageView;

    const v0, 0x7f0b008f

    .line 41
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->btn_full_epg:Landroid/widget/ImageButton;

    const v0, 0x7f0b0088

    .line 42
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->btn_back:Landroid/widget/ImageButton;

    const v0, 0x7f0b0090

    .line 43
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->btn_full_fav:Landroid/widget/ImageButton;

    const v0, 0x7f0b0091

    .line 44
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->btn_full_search:Landroid/widget/ImageButton;

    const v0, 0x7f0b009c

    .line 45
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->btn_resolution:Landroid/widget/ImageButton;

    const v0, 0x7f0b03f2

    .line 46
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->txt_resolution:Landroid/widget/TextView;

    const v0, 0x7f0b024d

    .line 47
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b0419

    .line 48
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->view_click:Landroid/view/View;

    const v0, 0x7f0b0095

    .line 49
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->btn_next:Landroid/widget/ImageButton;

    const v0, 0x7f0b0098

    .line 50
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->btn_play:Landroid/widget/ImageButton;

    const v0, 0x7f0b009a

    .line 51
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->btn_previous:Landroid/widget/ImageButton;

    const v0, 0x7f0b0423

    .line 52
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->volume_seekbar:Landroid/widget/SeekBar;

    const v0, 0x7f0b007a

    .line 53
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->bright_seekbar:Landroid/widget/SeekBar;

    .line 54
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->volume_seekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const-string v0, "audio"

    .line 55
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->audioManager:Landroid/media/AudioManager;

    .line 56
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->volume_seekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 57
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->volumeLevel:I

    .line 58
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 59
    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->volumeLevel:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float v1, v1, v0

    float-to-int v0, v1

    .line 60
    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->volume_seekbar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 61
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->bright_seekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 62
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->bright_seekbar:Landroid/widget/SeekBar;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 64
    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->bright_seekbar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 65
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->ly_surface:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->txt_live:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->txt_home:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->txt_series:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->txt_movie:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->btn_fav:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->btn_catch_up:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->btn_search:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->btn_lock:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->btn_full_epg:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->btn_full_search:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->btn_full_fav:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->btn_resolution:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->btn_back:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->btn_next:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->btn_play:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->btn_previous:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->view_click:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->et_search:Landroid/widget/EditText;

    new-instance v1, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$5;

    invoke-direct {v1, p0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$5;-><init>(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 84
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->getVideoSurfaceView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/nettv/livestore/activities/SearchActivity$$ExternalSyntheticLambda0;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Lcom/nettv/livestore/activities/SearchActivity$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private isAdultChannel(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

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

.method private synthetic lambda$controlFav$5(I)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->categoryModels:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->category_pos:I

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
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channelAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_44

    .line 3
    :cond_1c
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object p1

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->categoryModels:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->category_pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CategoryModel;

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v1

    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceLiveOrder()I

    move-result v2

    const-string v3, ""

    invoke-virtual {p1, v0, v3, v1, v2}, Lcom/nettv/livestore/helper/RealmController;->getLiveChannelsByCategory(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmResults;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgChannels:Lio/realm/RealmResults;

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channelAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;->updateData(Ljava/util/List;I)V

    .line 5
    :goto_44
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/RealmController;->getFavChannelNames()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceLiveFavChannels(Ljava/util/List;)V

    .line 6
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->categoryAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method private synthetic lambda$controlLock$6(I)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->categoryModels:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->category_pos:I

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
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channelAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_44

    .line 3
    :cond_1c
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object p1

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->categoryModels:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->category_pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CategoryModel;

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v1

    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceLiveOrder()I

    move-result v2

    const-string v3, ""

    invoke-virtual {p1, v0, v3, v1, v2}, Lcom/nettv/livestore/helper/RealmController;->getLiveChannelsByCategory(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmResults;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgChannels:Lio/realm/RealmResults;

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channelAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;->updateData(Ljava/util/List;I)V

    .line 5
    :goto_44
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/RealmController;->getLockChannelNames()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceLiveLockChannels(Ljava/util/List;)V

    .line 6
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->categoryAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method private synthetic lambda$epgTimer$4(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgTime:I

    if-nez v0, :cond_8

    .line 2
    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->getShortEpg(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_8
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->runNextEpgTicker()V

    return-void
.end method

.method private synthetic lambda$initView$9(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-boolean p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->is_full:Z

    if-eqz p1, :cond_1f

    .line 2
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_25

    .line 3
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->hideInfoTicker:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->mInfoHideTimer()V

    goto :goto_25

    :cond_1f
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->is_full:Z

    .line 7
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->setFull()V

    :cond_25
    :goto_25
    return-void
.end method

.method private synthetic lambda$mInfoHideTimer$7()V
    .registers 3

    .line 1
    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->hide_time:I

    if-nez v0, :cond_13

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :cond_13
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->moveNexHideTicker()V

    return-void
.end method

.method private synthetic lambda$new$8(Landroidx/activity/result/ActivityResult;)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_ea

    .line 2
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_ea

    const-string v0, "is_changed"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "from_search"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_bb

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->is_full:Z

    .line 5
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->setFull()V

    .line 6
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceCategoryPos()I

    move-result v0

    iput v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->category_pos:I

    .line 7
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceChannelPos()I

    move-result v0

    iput v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    .line 8
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v0

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->categoryModels:Ljava/util/List;

    iget v2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->category_pos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/CategoryModel;

    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v2

    iget-object v3, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v3}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceLiveOrder()I

    move-result v3

    const-string v4, ""

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/nettv/livestore/helper/RealmController;->getLiveChannelsByCategory(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmResults;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgChannels:Lio/realm/RealmResults;

    .line 9
    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    invoke-virtual {v0}, Lio/realm/RealmResults;->size()I

    move-result v0

    sub-int/2addr v0, p1

    if-le v1, v0, :cond_5f

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    .line 11
    :cond_5f
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channelAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgChannels:Lio/realm/RealmResults;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    invoke-virtual {p1, v0, v1}, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;->updateData(Ljava/util/List;I)V

    .line 12
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgChannels:Lio/realm/RealmResults;

    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    invoke-virtual {p1, v0}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/EPGChannel;

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    .line 13
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->recycler_category:Landroidx/recyclerview/widget/RecyclerView;

    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->category_pos:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 14
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->categoryAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;

    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->category_pos:I

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;->setCategoryPosition(I)V

    .line 15
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result p1

    if-nez p1, :cond_9b

    .line 16
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgTicker:Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 17
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getStream_id()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgTimer(Ljava/lang/String;)V

    goto :goto_9f

    :cond_9b
    const/4 p1, 0x0

    .line 18
    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->showEpgInfo(Ljava/util/List;)V

    .line 19
    :goto_9f
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_name:Ljava/lang/String;

    .line 20
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->txt_name:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_favorite()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->showFavImageIcon(Z)V

    .line 22
    iget p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->changeChannelInfo(I)V

    goto :goto_d9

    .line 23
    :cond_bb
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "add_group"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d9

    .line 24
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedLiveCategoryModels()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->categoryModels:Ljava/util/List;

    .line 25
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->categoryAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;

    invoke-virtual {v0, p1}, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;->setCategoryModels(Ljava/util/List;)V

    .line 26
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->recycler_category:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 27
    :cond_d9
    :goto_d9
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->playSelectedChannel(Lcom/nettv/livestore/models/EPGChannel;)V

    .line 28
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->recycler_channel:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 29
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->recycler_channel:Landroidx/recyclerview/widget/RecyclerView;

    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_ea
    return-void
.end method

.method private synthetic lambda$onCreate$0(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;
    .registers 8

    .line 1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 2
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_111

    .line 3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-nez p3, :cond_14

    .line 4
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->goToAddGroupActivity()V

    goto/16 :goto_111

    .line 5
    :cond_14
    iget p3, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->category_pos:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq p3, v0, :cond_111

    .line 6
    iget-object p3, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->et_search:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    sget-object p3, Lcom/nettv/livestore/apps/Constants;->xxx_live_categories:Ljava/util/List;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    const-string v1, "lock_id"

    const/4 v2, 0x0

    if-nez p3, :cond_d8

    invoke-virtual {p1}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3e

    goto/16 :goto_d8

    .line 8
    :cond_3e
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->category_pos:I

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget p3, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->category_pos:I

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " \u2022 Group : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->categoryModels:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->category_pos:I

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {p3}, Lcom/nettv/livestore/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->categoryName:Ljava/lang/String;

    .line 10
    iget p2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->category_pos:I

    const/4 p3, 0x4

    const/4 v1, -0x1

    if-le p2, p3, :cond_b7

    iget-object p3, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p3}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupCategory()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, 0x5

    if-ge p2, p3, :cond_b7

    .line 11
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupCategory()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_111

    .line 12
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupCategory()Ljava/util/List;

    move-result-object p1

    iget p2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->category_pos:I

    add-int/lit8 p2, p2, -0x5

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 13
    iget-object p2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p2, p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupChannels(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 14
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/nettv/livestore/helper/RealmController;->getEpgChannelsByNameArray(Ljava/util/List;Ljava/lang/String;)Lio/realm/RealmResults;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgChannels:Lio/realm/RealmResults;

    .line 15
    iget-object p2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channelAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;

    invoke-virtual {p2, p1, v1}, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;->updateData(Ljava/util/List;I)V

    .line 16
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->recycler_channel:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_111

    .line 17
    :cond_b7
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object p2

    iget-object p3, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p3}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result p3

    iget-object v3, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v3}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceLiveOrder()I

    move-result v3

    invoke-virtual {p2, p1, v0, p3, v3}, Lcom/nettv/livestore/helper/RealmController;->getLiveChannelsByCategory(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmResults;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgChannels:Lio/realm/RealmResults;

    .line 18
    iget-object p2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channelAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;

    invoke-virtual {p2, p1, v1}, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;->updateData(Ljava/util/List;I)V

    .line 19
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->recycler_channel:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_111

    .line 20
    :cond_d8
    :goto_d8
    invoke-virtual {p1}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10a

    .line 21
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceLiveLockChannels()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_f6

    .line 22
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->showLockDlgFragment(I)V

    goto :goto_111

    .line 23
    :cond_f6
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->category_pos:I

    .line 24
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getStr_no_lock_channels()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_111

    .line 25
    :cond_10a
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->showLockDlgFragment(I)V

    :cond_111
    :goto_111
    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic lambda$onCreate$1(Lcom/nettv/livestore/models/EPGChannel;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lkotlin/Unit;
    .registers 7

    .line 1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->pre_channel_pos:I

    .line 2
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_d9

    .line 3
    iget-boolean p3, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->is_full:Z

    if-nez p3, :cond_123

    .line 4
    iget-object p3, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->stream_id:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getStream_id()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_3e

    .line 5
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->categoryModels:Ljava/util/List;

    iget p2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->category_pos:I

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
    iput p4, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    :cond_36
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->is_full:Z

    .line 8
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->setFull()V

    goto/16 :goto_123

    .line 9
    :cond_3e
    iget-object p3, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->categoryModels:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->category_pos:I

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

    invoke-direct {p0, p3, v1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->isAdultChannel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_6b

    .line 10
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2, p4}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->showChannelLockDlgFragment(Lcom/nettv/livestore/models/EPGChannel;II)V

    goto/16 :goto_123

    .line 11
    :cond_6b
    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_id()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3, v1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->isAdultChannel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_9e

    iget-object p3, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->categoryModels:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->category_pos:I

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {p3}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object p3

    const-string v1, "lock_id"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_9e

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_locked()Z

    move-result p3

    if-eqz p3, :cond_9e

    .line 12
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2, p4}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->showChannelLockDlgFragment(Lcom/nettv/livestore/models/EPGChannel;II)V

    goto/16 :goto_123

    .line 13
    :cond_9e
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    .line 14
    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->playSelectedChannel(Lcom/nettv/livestore/models/EPGChannel;)V

    .line 15
    iget-object p2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result p2

    if-nez p2, :cond_be

    .line 16
    iget-object p2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->handler:Landroid/os/Handler;

    iget-object p3, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgTicker:Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 17
    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getStream_id()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgTimer(Ljava/lang/String;)V

    goto :goto_c1

    .line 18
    :cond_be
    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->showEpgInfo(Ljava/util/List;)V

    .line 19
    :goto_c1
    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_name:Ljava/lang/String;

    .line 20
    iget-object p3, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->txt_name:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_favorite()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->showFavImageIcon(Z)V

    .line 22
    iget p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->changeChannelInfo(I)V

    goto :goto_123

    .line 23
    :cond_d9
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_ee

    .line 24
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->controlFav(Lcom/nettv/livestore/models/EPGChannel;I)V

    .line 25
    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_favorite()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->showFavImageIcon(Z)V

    goto :goto_123

    .line 26
    :cond_ee
    iget-boolean p2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->is_full:Z

    if-nez p2, :cond_123

    .line 27
    iget-object p2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result p2

    if-nez p2, :cond_109

    .line 28
    iget-object p2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->handler:Landroid/os/Handler;

    iget-object p3, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgTicker:Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 29
    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getStream_id()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgTimer(Ljava/lang/String;)V

    goto :goto_10c

    .line 30
    :cond_109
    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->showEpgInfo(Ljava/util/List;)V

    .line 31
    :goto_10c
    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_name:Ljava/lang/String;

    .line 32
    iget-object p3, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->txt_name:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_favorite()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->showFavImageIcon(Z)V

    .line 34
    iget p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->pre_channel_pos:I

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->changeChannelInfo(I)V

    :cond_123
    :goto_123
    return-object v0
.end method

.method private synthetic lambda$playSelectedChannel$3()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->categoryModels:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->category_pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "resume_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channelAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channelAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;

    invoke-virtual {v0, v1}, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;->setSelectedPosition(I)V

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->recycler_channel:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 5
    iput v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    goto :goto_2e

    .line 6
    :cond_29
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->categoryAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :goto_2e
    return-void
.end method

.method private synthetic lambda$showSearchDlgFragment$2(Lcom/nettv/livestore/models/EPGChannel;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->releaseMediaPlayer()V

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->et_search:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_75

    .line 3
    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->category_pos:I

    const/4 v2, 0x4

    const-string v3, ""

    if-le v0, v2, :cond_56

    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupCategory()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    if-ge v0, v2, :cond_56

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupCategory()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_70

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupCategory()Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->category_pos:I

    add-int/lit8 v2, v2, -0x5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6
    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2, v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupChannels(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 7
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Lcom/nettv/livestore/helper/RealmController;->getEpgChannelsByNameArray(Ljava/util/List;Ljava/lang/String;)Lio/realm/RealmResults;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgChannels:Lio/realm/RealmResults;

    goto :goto_70

    .line 8
    :cond_56
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v0

    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->categoryModels:Ljava/util/List;

    iget v4, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->category_pos:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nettv/livestore/models/CategoryModel;

    iget-object v4, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v4}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v4

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/nettv/livestore/helper/RealmController;->getLiveChannelsByCategory(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmResults;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgChannels:Lio/realm/RealmResults;

    .line 9
    :cond_70
    :goto_70
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->et_search:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    :cond_75
    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->getRealChannelPosition(Lcom/nettv/livestore/models/EPGChannel;)I

    move-result v0

    iput v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    .line 11
    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->recycler_channel:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 12
    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->playSelectedChannel(Lcom/nettv/livestore/models/EPGChannel;)V

    .line 13
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result p1

    if-eqz p1, :cond_90

    const/4 p1, 0x0

    .line 14
    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->showEpgInfo(Ljava/util/List;)V

    goto :goto_95

    .line 15
    :cond_90
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->stream_id:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->getShortEpg(Ljava/lang/String;)V

    .line 16
    :goto_95
    iget p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->changeChannelInfo(I)V

    .line 17
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_favorite()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->showFavImageIcon(Z)V

    .line 18
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->hideInfoTicker:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 20
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->mInfoHideTimer()V

    return-void
.end method

.method private mInfoHideTimer()V
    .registers 3

    const/16 v0, 0xa

    .line 1
    iput v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->hide_time:I

    .line 2
    new-instance v0, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->hideInfoTicker:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;

    .line 3
    invoke-virtual {v0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;->run()V

    return-void
.end method

.method private moveNexHideTicker()V
    .registers 5

    .line 1
    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->hide_time:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->hide_time:I

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    .line 3
    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->hideInfoTicker:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private playNextChannel()V
    .registers 6

    .line 1
    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgChannels:Lio/realm/RealmResults;

    invoke-virtual {v1}, Lio/realm/RealmResults;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    if-ge v0, v1, :cond_13

    .line 2
    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    goto :goto_15

    .line 3
    :cond_13
    iput v3, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    .line 4
    :goto_15
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgChannels:Lio/realm/RealmResults;

    invoke-virtual {v0}, Lio/realm/RealmResults;->size()I

    move-result v0

    if-lez v0, :cond_10e

    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgChannels:Lio/realm/RealmResults;

    invoke-virtual {v1}, Lio/realm/RealmResults;->size()I

    move-result v1

    if-ge v0, v1, :cond_10e

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->categoryModels:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->category_pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "all_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgChannels:Lio/realm/RealmResults;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    invoke-virtual {v0, v1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_id()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgChannels:Lio/realm/RealmResults;

    iget v4, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    invoke-virtual {v1, v4}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->isAdultChannel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 6
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgChannels:Lio/realm/RealmResults;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    invoke-virtual {v0, v1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/EPGChannel;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    invoke-direct {p0, v0, v1, v2}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->showChannelLockDlgFragment(Lcom/nettv/livestore/models/EPGChannel;II)V

    goto/16 :goto_10e

    .line 7
    :cond_70
    sget-object v0, Lcom/nettv/livestore/apps/Constants;->xxx_live_categories:Ljava/util/List;

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->categoryModels:Ljava/util/List;

    iget v4, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->category_pos:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bc

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->categoryModels:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->category_pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lock_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_bc

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgChannels:Lio/realm/RealmResults;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    invoke-virtual {v0, v1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->is_locked()Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 8
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgChannels:Lio/realm/RealmResults;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    invoke-virtual {v0, v1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/EPGChannel;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    invoke-direct {p0, v0, v1, v2}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->showChannelLockDlgFragment(Lcom/nettv/livestore/models/EPGChannel;II)V

    goto :goto_10e

    .line 9
    :cond_bc
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgChannels:Lio/realm/RealmResults;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    invoke-virtual {v0, v1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/EPGChannel;

    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->playSelectedChannel(Lcom/nettv/livestore/models/EPGChannel;)V

    .line 10
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v0

    if-nez v0, :cond_de

    .line 11
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgTicker:Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->stream_id:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgTimer(Ljava/lang/String;)V

    goto :goto_e2

    :cond_de
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->showEpgInfo(Ljava/util/List;)V

    .line 14
    :goto_e2
    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->changeChannelInfo(I)V

    .line 15
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_f6

    .line 16
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 17
    :cond_f6
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->hideInfoTicker:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 18
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->mInfoHideTimer()V

    .line 19
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->txt_name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->recycler_channel:Landroidx/recyclerview/widget/RecyclerView;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_10e
    :goto_10e
    return-void
.end method

.method private playPreviousChannel()V
    .registers 5

    .line 1
    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    const/4 v1, 0x1

    if-lez v0, :cond_9

    sub-int/2addr v0, v1

    .line 2
    iput v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    goto :goto_12

    .line 3
    :cond_9
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgChannels:Lio/realm/RealmResults;

    invoke-virtual {v0}, Lio/realm/RealmResults;->size()I

    move-result v0

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    .line 4
    :goto_12
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgChannels:Lio/realm/RealmResults;

    invoke-virtual {v0}, Lio/realm/RealmResults;->size()I

    move-result v0

    if-lez v0, :cond_10c

    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgChannels:Lio/realm/RealmResults;

    invoke-virtual {v2}, Lio/realm/RealmResults;->size()I

    move-result v2

    if-ge v0, v2, :cond_10c

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->categoryModels:Ljava/util/List;

    iget v2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->category_pos:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "all_id"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgChannels:Lio/realm/RealmResults;

    iget v2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    invoke-virtual {v0, v2}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_id()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgChannels:Lio/realm/RealmResults;

    iget v3, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    invoke-virtual {v2, v3}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->isAdultChannel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 6
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgChannels:Lio/realm/RealmResults;

    iget v2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    invoke-virtual {v0, v2}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/EPGChannel;

    iget v2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    invoke-direct {p0, v0, v2, v1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->showChannelLockDlgFragment(Lcom/nettv/livestore/models/EPGChannel;II)V

    goto/16 :goto_10c

    .line 7
    :cond_6d
    sget-object v0, Lcom/nettv/livestore/apps/Constants;->xxx_live_categories:Ljava/util/List;

    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->categoryModels:Ljava/util/List;

    iget v3, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->category_pos:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b9

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->categoryModels:Ljava/util/List;

    iget v2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->category_pos:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "lock_id"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b9

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgChannels:Lio/realm/RealmResults;

    iget v2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    invoke-virtual {v0, v2}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->is_locked()Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 8
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgChannels:Lio/realm/RealmResults;

    iget v2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    invoke-virtual {v0, v2}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/EPGChannel;

    iget v2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    invoke-direct {p0, v0, v2, v1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->showChannelLockDlgFragment(Lcom/nettv/livestore/models/EPGChannel;II)V

    goto :goto_10c

    .line 9
    :cond_b9
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgChannels:Lio/realm/RealmResults;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    invoke-virtual {v0, v1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/EPGChannel;

    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->playSelectedChannel(Lcom/nettv/livestore/models/EPGChannel;)V

    .line 10
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v0

    if-nez v0, :cond_db

    .line 11
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgTicker:Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->stream_id:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgTimer(Ljava/lang/String;)V

    goto :goto_df

    :cond_db
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->showEpgInfo(Ljava/util/List;)V

    .line 14
    :goto_df
    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->changeChannelInfo(I)V

    .line 15
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->txt_name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_fb

    .line 17
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    :cond_fb
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->hideInfoTicker:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 19
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->mInfoHideTimer()V

    .line 20
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->recycler_channel:Landroidx/recyclerview/widget/RecyclerView;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_10c
    :goto_10c
    return-void
.end method

.method private playSelectedChannel(Lcom/nettv/livestore/models/EPGChannel;)V
    .registers 6

    if-eqz p1, :cond_ad

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->category_pos:I

    invoke-virtual {v0, v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceCategoryPos(I)V

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    invoke-virtual {v0, v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceChannelPos(I)V

    .line 3
    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    .line 4
    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getStream_id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->stream_id:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_name:Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->is_favorite()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->showFavImageIcon(Z)V

    .line 7
    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_locked()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->showLockImageIcon(Z)V

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result p1

    if-eqz p1, :cond_41

    .line 9
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->content_url:Ljava/lang/String;

    goto :goto_61

    .line 10
    :cond_41
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceServerUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceUsername()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferencePassword()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->stream_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v3}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceLiveStreamFormat()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v1, v2, v3}, Lcom/nettv/livestore/helper/GetSharedInfo;->getLiveChannelUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->content_url:Ljava/lang/String;

    .line 11
    :goto_61
    sget-object p1, Lcom/nettv/livestore/apps/Constants;->xxx_live_categories:Ljava/util/List;

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->categoryModels:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->category_pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_9d

    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_id()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->isAdultChannel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9d

    .line 12
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object p1

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;)V

    invoke-virtual {p1, v1, v0, v2}, Lcom/nettv/livestore/helper/RealmController;->addToRecentChannels(Ljava/lang/String;ZLcom/nettv/livestore/helper/RealmChangeItemListener;)V

    goto :goto_a0

    .line 13
    :cond_9d
    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->showLockImageIcon(Z)V

    .line 14
    :goto_a0
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->categoryAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 15
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->releaseMediaPlayer()V

    .line 16
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->content_url:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->playVideo(Ljava/lang/String;)V

    :cond_ad
    return-void
.end method

.method private playVideo(Ljava/lang/String;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->release()V

    .line 2
    :cond_7
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->image_def:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->image_def:Landroid/widget/ImageView;

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
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    .line 10
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->createMediaSourceFactory()Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setMediaSourceFactory(Lcom/google/android/exoplayer2/source/MediaSource$Factory;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 11
    invoke-direct {p0, v0, v1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->setRenderersFactory(Lcom/google/android/exoplayer2/ExoPlayer$Builder;Z)V

    .line 12
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->build()Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 13
    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->trackSelectionParameters:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/Player;->setTrackSelectionParameters(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    .line 14
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    new-instance v2, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$3;

    invoke-direct {v2, p0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$3;-><init>(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;)V

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/ExoPlayer;->addAnalyticsListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    .line 15
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    new-instance v2, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$PlayerEventListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$PlayerEventListener;-><init>(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$1;)V

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/Player;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 16
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    new-instance v2, Lcom/google/android/exoplayer2/util/EventLogger;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/util/EventLogger;-><init>()V

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/ExoPlayer;->addAnalyticsListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    .line 17
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    sget-object v2, Lcom/google/android/exoplayer2/audio/AudioAttributes;->DEFAULT:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    invoke-interface {v0, v2, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;Z)V

    .line 18
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    .line 19
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    .line 20
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player;->setMediaItem(Lcom/google/android/exoplayer2/MediaItem;)V

    .line 21
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->prepare()V

    .line 22
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->play()V

    return-void
.end method

.method private releaseMediaPlayer()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->stop()V

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->release()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 5
    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    return-void
.end method

.method private runNextEpgTicker()V
    .registers 5

    .line 1
    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgTime:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgTime:I

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    add-long/2addr v0, v2

    .line 3
    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgTicker:Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private saveCategoryAndChannelPosition()V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_name()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 3
    :goto_10
    iget-object v3, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->categoryModels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2e

    .line 4
    iget-object v3, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->categoryModels:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    goto :goto_56

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_2e
    const/4 v2, 0x0

    goto :goto_56

    .line 5
    :cond_30
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_id()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 6
    :goto_38
    iget-object v4, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->categoryModels:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_56

    .line 7
    iget-object v4, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->categoryModels:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v4}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_53

    move v2, v3

    :cond_53
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 8
    :cond_56
    :goto_56
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v0

    iget-object v3, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->categoryModels:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nettv/livestore/models/CategoryModel;

    iget-object v4, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v4}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v4

    iget-object v5, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v5}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceLiveOrder()I

    move-result v5

    const-string v6, ""

    invoke-virtual {v0, v3, v6, v4, v5}, Lcom/nettv/livestore/helper/RealmController;->getLiveChannelsByCategory(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmResults;

    move-result-object v0

    const/4 v3, 0x0

    .line 9
    :goto_75
    invoke-virtual {v0}, Lio/realm/RealmResults;->size()I

    move-result v4

    if-ge v3, v4, :cond_96

    .line 10
    iget-object v4, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v4}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v5}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_93

    move v1, v3

    goto :goto_96

    :cond_93
    add-int/lit8 v3, v3, 0x1

    goto :goto_75

    .line 11
    :cond_96
    :goto_96
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0, v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceCategoryPos(I)V

    .line 12
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0, v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceChannelPos(I)V

    return-void
.end method

.method private searchChannelsInCategory(Ljava/lang/String;)V
    .registers 6

    .line 1
    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->category_pos:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_40

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupCategory()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    if-ge v0, v1, :cond_40

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupCategory()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_60

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupCategory()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->category_pos:I

    add-int/lit8 v1, v1, -0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1, v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupChannels(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/nettv/livestore/helper/RealmController;->getEpgChannelsByNameArray(Ljava/util/List;Ljava/lang/String;)Lio/realm/RealmResults;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgChannels:Lio/realm/RealmResults;

    goto :goto_60

    .line 6
    :cond_40
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v0

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->categoryModels:Ljava/util/List;

    iget v2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->category_pos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/CategoryModel;

    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v2

    iget-object v3, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v3}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceLiveOrder()I

    move-result v3

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/nettv/livestore/helper/RealmController;->getLiveChannelsByCategory(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmResults;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgChannels:Lio/realm/RealmResults;

    .line 7
    :cond_60
    :goto_60
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channelAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgChannels:Lio/realm/RealmResults;

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;->updateData(Ljava/util/List;I)V

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->recycler_channel:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

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
    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->txt_current_program:Landroid/widget/TextView;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nettv/livestore/models/CatchUpEpg;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/CatchUpEpg;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nettv/livestore/utils/Utils;->decode64String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->txt_current_time:Landroid/widget/TextView;

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
    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->seekBar:Landroid/widget/SeekBar;

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
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->txt_next_program:Landroid/widget/TextView;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/CatchUpEpg;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/CatchUpEpg;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nettv/livestore/utils/Utils;->decode64String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->txt_next_time:Landroid/widget/TextView;

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
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->txt_next_time:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->txt_next_program:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getNo_information()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c4

    .line 10
    :cond_9f
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->txt_current_time:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/WordModels;->getNo_information()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->txt_current_program:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 13
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->txt_next_time:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->txt_next_program:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getNo_information()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_c4
    return-void
.end method

.method private setFull()V
    .registers 7

    .line 1
    iget-boolean v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->is_full:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_38

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->btn_catch_up:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->btn_fav:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->btn_search:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->recycler_channel:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->recycler_category:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_2d

    .line 8
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    :cond_2d
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->hideInfoTicker:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->mInfoHideTimer()V

    goto :goto_69

    .line 11
    :cond_38
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->btn_catch_up:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->btn_fav:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->btn_search:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->hideInfoTicker:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->recycler_channel:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->recycler_category:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channelAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    invoke-virtual {v0, v1}, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;->setSelectedPosition(I)V

    .line 19
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->recycler_channel:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 20
    :goto_69
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 21
    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->main_lay:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 22
    iget-boolean v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->is_full:Z

    const v2, 0x7f0b01b6

    const v3, 0x7f0b01b5

    const v4, 0x7f0b0410

    const v5, 0x7f0b040f

    if-eqz v1, :cond_96

    const v1, -0x41947ae1    # -0.23f

    .line 23
    invoke-virtual {v0, v5, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelinePercent(IF)V

    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v4, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelinePercent(IF)V

    .line 25
    invoke-virtual {v0, v3, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelinePercent(IF)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 26
    invoke-virtual {v0, v2, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelinePercent(IF)V

    goto :goto_ad

    :cond_96
    const v1, 0x3e6b851f    # 0.23f

    .line 27
    invoke-virtual {v0, v5, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelinePercent(IF)V

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
    :goto_ad
    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->main_lay:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

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
    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceParentPassword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nettv/livestore/dlgfragment/LockDlgFragment;->newInstance(Ljava/lang/String;)Lcom/nettv/livestore/dlgfragment/LockDlgFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->lockDlgFragment:Lcom/nettv/livestore/dlgfragment/LockDlgFragment;

    .line 6
    new-instance v3, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;

    invoke-direct {v3, p0, p3, p2, p1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$2;-><init>(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;IILcom/nettv/livestore/models/EPGChannel;)V

    invoke-virtual {v1, v3}, Lcom/nettv/livestore/dlgfragment/LockDlgFragment;->setOnPinEventListener(Lcom/nettv/livestore/dlgfragment/LockDlgFragment$OnPinEventListener;)V

    .line 7
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->lockDlgFragment:Lcom/nettv/livestore/dlgfragment/LockDlgFragment;

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
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgAdapter:Lcom/nettv/livestore/adapter/EpgRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/nettv/livestore/adapter/EpgRecyclerAdapter;->setEpgList(Ljava/util/List;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->setCurrentEpgEvent(Ljava/util/List;)V

    goto :goto_24

    .line 4
    :cond_12
    :goto_12
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgAdapter:Lcom/nettv/livestore/adapter/EpgRecyclerAdapter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/adapter/EpgRecyclerAdapter;->setEpgList(Ljava/util/List;)V

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->setCurrentEpgEvent(Ljava/util/List;)V

    :goto_24
    return-void
.end method

.method private showFavImageIcon(Z)V
    .registers 4

    if-eqz p1, :cond_1e

    .line 1
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->btn_fav:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getRemove_favorites()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->btn_full_fav:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0602f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_39

    .line 3
    :cond_1e
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->btn_fav:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getAdd_to_favorite()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->btn_full_fav:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0602f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :goto_39
    return-void
.end method

.method private showLockDlgFragment(I)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "fragment_lock"

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
    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceParentPassword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nettv/livestore/dlgfragment/LockDlgFragment;->newInstance(Ljava/lang/String;)Lcom/nettv/livestore/dlgfragment/LockDlgFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->lockDlgFragment:Lcom/nettv/livestore/dlgfragment/LockDlgFragment;

    .line 6
    new-instance v3, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$1;

    invoke-direct {v3, p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$1;-><init>(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;I)V

    invoke-virtual {v1, v3}, Lcom/nettv/livestore/dlgfragment/LockDlgFragment;->setOnPinEventListener(Lcom/nettv/livestore/dlgfragment/LockDlgFragment$OnPinEventListener;)V

    .line 7
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->lockDlgFragment:Lcom/nettv/livestore/dlgfragment/LockDlgFragment;

    invoke-virtual {p1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showLockImageIcon(Z)V
    .registers 3

    if-eqz p1, :cond_b

    .line 1
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->btn_lock:Landroid/widget/ImageButton;

    const v0, 0x7f080127

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_13

    .line 2
    :cond_b
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->btn_lock:Landroid/widget/ImageButton;

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
    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->categoryModels:Ljava/util/List;

    iget v3, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->category_pos:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/CategoryModel;

    iget v3, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->category_pos:I

    iget-object v4, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v4}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v4

    invoke-static {p0, v1, v3, v4}, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->newInstance(Landroid/content/Context;Lcom/nettv/livestore/models/CategoryModel;IZ)Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->searchDlgFragment:Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;

    .line 6
    new-instance v3, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;)V

    invoke-virtual {v1, v3}, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->setSelectCurrentChannelListener(Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment$SelectCurrentChannelListener;)V

    .line 7
    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->searchDlgFragment:Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_15e

    goto/16 :goto_15c

    .line 2
    :sswitch_d
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_15c

    .line 3
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->hideInfoTicker:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 5
    :sswitch_22
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->goToSeriesActivity()V

    goto/16 :goto_15c

    .line 6
    :sswitch_27
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->goToVodActivity()V

    goto/16 :goto_15c

    .line 7
    :sswitch_2c
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->releaseMediaPlayer()V

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->categoryModels:Ljava/util/List;

    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->category_pos:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "resume_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4c

    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    if-eqz p1, :cond_4c

    .line 9
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->saveCategoryAndChannelPosition()V

    .line 10
    :cond_4c
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_15c

    .line 11
    :sswitch_51
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->goToSearchActivity()V

    goto/16 :goto_15c

    .line 12
    :sswitch_56
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz p1, :cond_15c

    .line 13
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result p1

    if-eqz p1, :cond_15c

    .line 14
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->getResizeMode()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_70

    .line 15
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setResizeMode(I)V

    goto/16 :goto_15c

    .line 16
    :cond_70
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setResizeMode(I)V

    goto/16 :goto_15c

    .line 17
    :sswitch_77
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->playPreviousChannel()V

    goto/16 :goto_15c

    .line 18
    :sswitch_7c
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz p1, :cond_15c

    .line 19
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result p1

    if-eqz p1, :cond_95

    .line 20
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1, v2}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    .line 21
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->btn_play:Landroid/widget/ImageButton;

    const v0, 0x7f080133

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_15c

    .line 22
    :cond_95
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    .line 23
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->btn_play:Landroid/widget/ImageButton;

    const v0, 0x7f080132

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_15c

    .line 24
    :sswitch_a4
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->playNextChannel()V

    goto/16 :goto_15c

    .line 25
    :sswitch_a9
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    if-eqz p1, :cond_15c

    .line 26
    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_id()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->isAdultChannel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_cc

    .line 27
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getChannel_locked_default()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_15c

    .line 28
    :cond_cc
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_locked()Z

    move-result p1

    if-eqz p1, :cond_de

    .line 29
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    const/4 v1, 0x4

    invoke-direct {p0, p1, v0, v1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->showChannelLockDlgFragment(Lcom/nettv/livestore/models/EPGChannel;II)V

    goto/16 :goto_15c

    .line 30
    :cond_de
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    invoke-direct {p0, p1, v0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->controlLock(Lcom/nettv/livestore/models/EPGChannel;I)V

    .line 31
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_locked()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->showLockImageIcon(Z)V

    .line 32
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_locked()Z

    move-result p1

    if-eqz p1, :cond_105

    .line 33
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getChannel_unlocked()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_15c

    .line 34
    :cond_105
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getChannel_locked()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_15c

    .line 35
    :sswitch_113
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 36
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->showSearchDlgFragment()V

    goto :goto_15c

    .line 37
    :sswitch_11c
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    if-eqz p1, :cond_15c

    .line 38
    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    invoke-direct {p0, p1, v0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->controlFav(Lcom/nettv/livestore/models/EPGChannel;I)V

    .line 39
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_favorite()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->showFavImageIcon(Z)V

    .line 40
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_favorite()Z

    move-result p1

    if-eqz p1, :cond_145

    .line 41
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getChannel_removed_from_fav()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_15c

    .line 42
    :cond_145
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getChannel_added_to_fav()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_15c

    .line 43
    :sswitch_153
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->goToCatchupActivity()V

    goto :goto_15c

    .line 44
    :sswitch_157
    iput-boolean v2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->is_full:Z

    .line 45
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->setFull()V

    :cond_15c
    :goto_15c
    return-void

    nop

    :sswitch_data_15e
    .sparse-switch
        0x7f0b0088 -> :sswitch_157
        0x7f0b008a -> :sswitch_153
        0x7f0b008d -> :sswitch_11c
        0x7f0b008f -> :sswitch_153
        0x7f0b0090 -> :sswitch_11c
        0x7f0b0091 -> :sswitch_113
        0x7f0b0093 -> :sswitch_a9
        0x7f0b0095 -> :sswitch_a4
        0x7f0b0098 -> :sswitch_7c
        0x7f0b009a -> :sswitch_77
        0x7f0b009c -> :sswitch_56
        0x7f0b009f -> :sswitch_51
        0x7f0b03d9 -> :sswitch_2c
        0x7f0b03e2 -> :sswitch_27
        0x7f0b03f7 -> :sswitch_22
        0x7f0b0419 -> :sswitch_d
    .end sparse-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 12

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e0026

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 3
    invoke-static {p0}, Lcom/nettv/livestore/utils/Utils;->FullScreenCall(Landroid/app/Activity;)V

    .line 4
    new-instance p1, Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-direct {p1, p0}, Lcom/nettv/livestore/helper/PreferenceHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    .line 5
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->getWordModel(Landroid/content/Context;)Lcom/nettv/livestore/models/WordModels;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 6
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->initView()V

    .line 7
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_27

    .line 8
    new-instance p1, Landroid/app/PictureInPictureParams$Builder;

    invoke-direct {p1}, Landroid/app/PictureInPictureParams$Builder;-><init>()V

    .line 9
    :cond_27
    invoke-static {p0}, Lcom/nettv/livestore/utils/DemoUtil;->getDataSourceFactory(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 10
    new-instance p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    .line 11
    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceSubtitleEnable()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setTrackTypeDisabled(IZ)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->build()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->trackSelectionParameters:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const-string v3, "is_full"

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->is_full:Z

    .line 14
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceInvisibleLiveCategories()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/nettv/livestore/apps/Constants;->getLiveGroupModels(Ljava/util/List;Landroid/content/Context;)V

    .line 15
    sget-object p1, Lcom/nettv/livestore/apps/LTVApp;->live_categories_filter:Ljava/util/List;

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->categoryModels:Ljava/util/List;

    .line 16
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceCategoryPos()I

    move-result p1

    iput p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->category_pos:I

    .line 17
    iget-object v3, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->categoryModels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    if-le p1, v3, :cond_72

    .line 18
    iput v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->category_pos:I

    .line 19
    :cond_72
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->categoryModels:Ljava/util/List;

    iget v3, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->category_pos:I

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->categoryModels:Ljava/util/List;

    iget v4, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->category_pos:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->isAdultChannel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_96

    .line 20
    iput v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->category_pos:I

    .line 21
    :cond_96
    new-instance p1, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;

    iget-object v5, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->categoryModels:Ljava/util/List;

    iget-object v3, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v3}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v6

    const/4 v7, 0x0

    iget v8, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->category_pos:I

    new-instance v9, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda3;

    const/16 v3, 0x8

    invoke-direct {v9, p0, v3}, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ZZILkotlin/jvm/functions/Function3;)V

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->categoryAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;

    .line 22
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->recycler_category:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 23
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->recycler_category:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->categoryAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 24
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->recycler_category:Landroidx/recyclerview/widget/RecyclerView;

    iget v3, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->category_pos:I

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 25
    iget p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->category_pos:I

    const/4 v3, 0x4

    const-string v4, ""

    if-le p1, v3, :cond_10b

    iget-object v5, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v5}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupCategory()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x5

    if-ge p1, v5, :cond_10b

    .line 26
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupCategory()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_12b

    .line 27
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupCategory()Ljava/util/List;

    move-result-object p1

    iget v5, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->category_pos:I

    add-int/lit8 v5, v5, -0x5

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 28
    iget-object v5, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v5, p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupChannels(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 29
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v5

    invoke-virtual {v5, p1, v4}, Lcom/nettv/livestore/helper/RealmController;->getEpgChannelsByNameArray(Ljava/util/List;Ljava/lang/String;)Lio/realm/RealmResults;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgChannels:Lio/realm/RealmResults;

    goto :goto_12b

    .line 30
    :cond_10b
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object p1

    iget-object v5, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->categoryModels:Ljava/util/List;

    iget v6, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->category_pos:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nettv/livestore/models/CategoryModel;

    iget-object v6, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v6}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v6

    iget-object v7, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v7}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceLiveOrder()I

    move-result v7

    invoke-virtual {p1, v5, v4, v6, v7}, Lcom/nettv/livestore/helper/RealmController;->getLiveChannelsByCategory(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmResults;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgChannels:Lio/realm/RealmResults;

    .line 31
    :cond_12b
    :goto_12b
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceChannelPos()I

    move-result p1

    iput p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    .line 32
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgChannels:Lio/realm/RealmResults;

    invoke-virtual {p1}, Lio/realm/RealmResults;->size()I

    move-result p1

    if-lez p1, :cond_149

    .line 33
    iget p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    iget-object v5, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgChannels:Lio/realm/RealmResults;

    invoke-virtual {v5}, Lio/realm/RealmResults;->size()I

    move-result v5

    sub-int/2addr v5, v1

    if-le p1, v5, :cond_14c

    .line 34
    iput v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    goto :goto_14c

    :cond_149
    const/4 p1, -0x1

    .line 35
    iput p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    .line 36
    :cond_14c
    :goto_14c
    new-instance p1, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgChannels:Lio/realm/RealmResults;

    iget v5, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    new-instance v6, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0, v3}, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p1, p0, v1, v5, v6}, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILkotlin/jvm/functions/Function4;)V

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channelAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;

    .line 37
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->recycler_channel:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 38
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->recycler_channel:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channelAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 39
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->recycler_channel:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 40
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->recycler_channel:Landroidx/recyclerview/widget/RecyclerView;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 41
    new-instance p1, Lcom/nettv/livestore/adapter/EpgRecyclerAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p1, p0, v1}, Lcom/nettv/livestore/adapter/EpgRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgAdapter:Lcom/nettv/livestore/adapter/EpgRecyclerAdapter;

    .line 42
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->recycler_epg:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 43
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->recycler_epg:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgAdapter:Lcom/nettv/livestore/adapter/EpgRecyclerAdapter;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 44
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->recycler_epg:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 45
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgChannels:Lio/realm/RealmResults;

    invoke-virtual {p1}, Lio/realm/RealmResults;->size()I

    move-result p1

    const/4 v1, 0x0

    if-lez p1, :cond_24e

    .line 46
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->setFull()V

    .line 47
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgChannels:Lio/realm/RealmResults;

    iget v3, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    invoke-virtual {p1, v3}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_id()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgChannels:Lio/realm/RealmResults;

    iget v4, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    invoke-virtual {v3, v4}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->isAdultChannel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1cb

    .line 48
    iput v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    .line 49
    :cond_1cb
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgChannels:Lio/realm/RealmResults;

    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    invoke-virtual {p1, v0}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_locked()Z

    move-result p1

    if-eqz p1, :cond_1ec

    .line 50
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgChannels:Lio/realm/RealmResults;

    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    invoke-virtual {p1, v0}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/EPGChannel;

    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    invoke-direct {p0, p1, v0, v2}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->showChannelLockDlgFragment(Lcom/nettv/livestore/models/EPGChannel;II)V

    goto/16 :goto_2f0

    .line 51
    :cond_1ec
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgChannels:Lio/realm/RealmResults;

    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    invoke-virtual {p1, v0}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/EPGChannel;

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->playSelectedChannel(Lcom/nettv/livestore/models/EPGChannel;)V

    .line 52
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgChannels:Lio/realm/RealmResults;

    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    invoke-virtual {p1, v0}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getStream_id()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->stream_id:Ljava/lang/String;

    .line 53
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result p1

    if-nez p1, :cond_21e

    .line 54
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgTicker:Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 55
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->stream_id:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgTimer(Ljava/lang/String;)V

    goto :goto_221

    .line 56
    :cond_21e
    invoke-direct {p0, v1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->showEpgInfo(Ljava/util/List;)V

    .line 57
    :goto_221
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgChannels:Lio/realm/RealmResults;

    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    invoke-virtual {p1, v0}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_name:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->txt_name:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgChannels:Lio/realm/RealmResults;

    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    invoke-virtual {p1, v0}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_favorite()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->showFavImageIcon(Z)V

    .line 60
    iget p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->changeChannelInfo(I)V

    goto/16 :goto_2f0

    :cond_24e
    const/4 p1, 0x2

    .line 61
    iput p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->category_pos:I

    .line 62
    iput v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    .line 63
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->setFull()V

    .line 64
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object p1

    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->categoryModels:Ljava/util/List;

    iget v3, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->category_pos:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nettv/livestore/models/CategoryModel;

    iget-object v3, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v3}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v3

    iget-object v5, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v5}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceLiveOrder()I

    move-result v5

    invoke-virtual {p1, v2, v4, v3, v5}, Lcom/nettv/livestore/helper/RealmController;->getLiveChannelsByCategory(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmResults;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgChannels:Lio/realm/RealmResults;

    .line 65
    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channelAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;

    invoke-virtual {v2, p1, v0}, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;->updateData(Ljava/util/List;I)V

    .line 66
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgChannels:Lio/realm/RealmResults;

    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    invoke-virtual {p1, v0}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_id()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgChannels:Lio/realm/RealmResults;

    iget v2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    invoke-virtual {v0, v2}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->isAdultChannel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2a3

    .line 67
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->recycler_category:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_2f0

    .line 68
    :cond_2a3
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgChannels:Lio/realm/RealmResults;

    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    invoke-virtual {p1, v0}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/EPGChannel;

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->playSelectedChannel(Lcom/nettv/livestore/models/EPGChannel;)V

    .line 69
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgChannels:Lio/realm/RealmResults;

    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    invoke-virtual {p1, v0}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getStream_id()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->stream_id:Ljava/lang/String;

    .line 70
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result p1

    if-nez p1, :cond_2d5

    .line 71
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgTicker:Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 72
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->stream_id:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->epgTimer(Ljava/lang/String;)V

    goto :goto_2d8

    .line 73
    :cond_2d5
    invoke-direct {p0, v1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->showEpgInfo(Ljava/util/List;)V

    .line 74
    :goto_2d8
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->txt_name:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->changeChannelInfo(I)V

    .line 76
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->recycler_channel:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 77
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->recycler_channel:Landroidx/recyclerview/widget/RecyclerView;

    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->channel_pos:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :goto_2f0
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
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    if-eqz v0, :cond_10

    .line 4
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->onPause()V

    .line 5
    :cond_10
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->releaseMediaPlayer()V

    :cond_13
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 5

    if-eqz p3, :cond_7c

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const p3, 0x7f0b007a

    const/4 v0, 0x0

    if-eq p1, p3, :cond_23

    const p3, 0x7f0b0423

    if-eq p1, p3, :cond_12

    goto :goto_7c

    .line 2
    :cond_12
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->audioManager:Landroid/media/AudioManager;

    const/4 p3, 0x3

    invoke-virtual {p1, p3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p1

    mul-int p1, p1, p2

    .line 3
    div-int/lit8 p1, p1, 0x64

    .line 4
    iget-object p2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p2, p3, p1, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_7c

    .line 5
    :cond_23
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x17

    if-lt p1, p3, :cond_7c

    .line 6
    invoke-static {p0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_59

    .line 7
    iget-boolean p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->is_system_setting:Z

    if-nez p1, :cond_7c

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->is_system_setting:Z

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

    goto :goto_7c

    .line 13
    :cond_59
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

    :cond_7c
    :goto_7c
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

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
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    if-eqz v0, :cond_10

    .line 4
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->onPause()V

    .line 5
    :cond_10
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->releaseMediaPlayer()V

    :cond_13
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method

.method public final onUserLeaveHint()V
    .registers 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 2
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->releaseMediaPlayer()V

    return-void
.end method
