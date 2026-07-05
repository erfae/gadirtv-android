.class public Lcom/nettv/livestore/activities/LiveActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "LiveActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/activities/LiveActivity$PlayerEventListener;
    }
.end annotation


# instance fields
.field public btn_catch_up:Landroid/widget/Button;

.field public btn_fav:Landroid/widget/Button;

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

.field public focusStatus:Lcom/nettv/livestore/apps/FocusStatus;

.field public handler:Landroid/os/Handler;

.field public hideInfoTicker:Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda2;

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

.field public moveTicker:Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda2;

.field public move_pos:I

.field public move_time:I

.field public player:Lcom/google/android/exoplayer2/ExoPlayer;

.field public playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

.field public pre_category_pos:I

.field public pre_channel_pos:I

.field public preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

.field public recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

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
.method public static synthetic $r8$lambda$4stkZUPn1-0s5oL9p5mYESLKqKE(Lcom/nettv/livestore/activities/LiveActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->lambda$mInfoHideTimer$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$6SRXiDSslV19Sx_K72NJB1rbstQ(Lcom/nettv/livestore/activities/LiveActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveActivity;->lambda$epgTimer$4(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$D7-qx1XiK_vLmrpTfcKHoboULXY(Lcom/nettv/livestore/activities/LiveActivity;Lcom/nettv/livestore/models/EPGChannel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveActivity;->lambda$showSearchDlgFragment$2(Lcom/nettv/livestore/models/EPGChannel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JAhu0P8Vuk_vFsyPDxOMSbkbmSM(Lcom/nettv/livestore/activities/LiveActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveActivity;->lambda$controlFav$5(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Kf2qvBL70WQ8rBPdAZWch86JZqw(Lcom/nettv/livestore/activities/LiveActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->lambda$moveTimer$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$cZX8bBC0gTyF2iv3D-YNnoHwFWo(Lcom/nettv/livestore/activities/LiveActivity;Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/activities/LiveActivity;->lambda$onCreate$0(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$doEedHxauOD9qQ5tHhBkelKKmH4(Lcom/nettv/livestore/activities/LiveActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveActivity;->lambda$controlLock$6(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$nIjtijqty1TXZFOXZnWwAlD0eE8(Lcom/nettv/livestore/activities/LiveActivity;Lcom/nettv/livestore/models/EPGChannel;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nettv/livestore/activities/LiveActivity;->lambda$onCreate$1(Lcom/nettv/livestore/models/EPGChannel;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wvF08lgcv_9PGMpl9xkR-lYozvA(Lcom/nettv/livestore/activities/LiveActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->lambda$playSelectedChannel$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$yrXcx1eV_v3GLWUQpPXeDYFJ6mA(Lcom/nettv/livestore/activities/LiveActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveActivity;->lambda$new$9(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/nettv/livestore/activities/LiveActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

    iput v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    iput v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->pre_category_pos:I

    iput v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->pre_channel_pos:I

    iput v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->move_pos:I

    iput v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->error_count:I

    const-string v1, ""

    .line 3
    iput-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->stream_id:Ljava/lang/String;

    iput-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->key:Ljava/lang/String;

    .line 4
    iput-boolean v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->is_full:Z

    .line 5
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->handler:Landroid/os/Handler;

    .line 6
    iput-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->categoryName:Ljava/lang/String;

    .line 7
    sget-object v0, Lcom/nettv/livestore/apps/FocusStatus;->second:Lcom/nettv/livestore/apps/FocusStatus;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->focusStatus:Lcom/nettv/livestore/apps/FocusStatus;

    .line 8
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/activities/LiveActivity;)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->someActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public static synthetic access$000(Lcom/nettv/livestore/activities/LiveActivity;Lcom/nettv/livestore/models/EPGChannel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveActivity;->playSelectedChannel(Lcom/nettv/livestore/models/EPGChannel;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/nettv/livestore/activities/LiveActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveActivity;->epgTimer(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/nettv/livestore/activities/LiveActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveActivity;->playVideo(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1100(Lcom/nettv/livestore/activities/LiveActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveActivity;->searchChannelsInCategory(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/nettv/livestore/activities/LiveActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveActivity;->showEpgInfo(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/nettv/livestore/activities/LiveActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveActivity;->changeChannelInfo(I)V

    return-void
.end method

.method public static synthetic access$400(Lcom/nettv/livestore/activities/LiveActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->mInfoHideTimer()V

    return-void
.end method

.method public static synthetic access$500(Lcom/nettv/livestore/activities/LiveActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveActivity;->getShortEpg(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$600(Lcom/nettv/livestore/activities/LiveActivity;Lcom/nettv/livestore/models/EPGChannel;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nettv/livestore/activities/LiveActivity;->controlLock(Lcom/nettv/livestore/models/EPGChannel;I)V

    return-void
.end method

.method public static synthetic access$700(Lcom/nettv/livestore/activities/LiveActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveActivity;->showLockImageIcon(Z)V

    return-void
.end method

.method public static synthetic access$900(Lcom/nettv/livestore/activities/LiveActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->releaseMediaPlayer()V

    return-void
.end method

.method private changeChannelInfo(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_group:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->categoryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_channel_name:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgChannels:Lio/realm/RealmResults;

    invoke-virtual {v2, p1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/EPGChannel;->getNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgChannels:Lio/realm/RealmResults;

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
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgChannels:Lio/realm/RealmResults;

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

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_image:Landroid/widget/ImageView;

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

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_image:Landroid/widget/ImageView;

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

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->categoryModels:Ljava/util/List;

    iget v2, p0, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

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

    xor-int/lit8 p1, p1, 0x1

    new-instance v2, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p2, v3}, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda1;-><init>(Lcom/nettv/livestore/activities/LiveActivity;II)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/nettv/livestore/helper/RealmController;->addToFavChannels(Ljava/lang/String;ZLcom/nettv/livestore/helper/RealmChangeItemListener;)V

    :cond_0
    return-void
.end method

.method private controlLock(Lcom/nettv/livestore/models/EPGChannel;I)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    sget-object v0, Lcom/nettv/livestore/apps/Constants;->xxx_live_categories:Ljava/util/List;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->categoryModels:Ljava/util/List;

    iget v2, p0, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

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

    const/4 v2, 0x1

    xor-int/2addr p1, v2

    new-instance v3, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p2, v2}, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda1;-><init>(Lcom/nettv/livestore/activities/LiveActivity;II)V

    invoke-virtual {v0, v1, p1, v3}, Lcom/nettv/livestore/helper/RealmController;->addToLockChannels(Ljava/lang/String;ZLcom/nettv/livestore/helper/RealmChangeItemListener;)V

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

    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveActivity;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

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
    iput v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgTime:I

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;

    const/16 v1, 0xa

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgTicker:Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;->run()V

    return-void
.end method

.method private findAndShowChannel()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->move_pos:I

    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/RealmController;->getAllEpgChannelSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_num:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iput-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->key:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->move_pos:I

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->moveTicker:Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda2;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_num:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->moveTicker:Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda2;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->moveTimer()V

    :goto_0
    return-void
.end method

.method private findChannelInfo()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgChannels:Lio/realm/RealmResults;

    invoke-virtual {v2}, Lio/realm/RealmResults;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgChannels:Lio/realm/RealmResults;

    invoke-virtual {v2, v1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/EPGChannel;->getNum()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget v3, p0, Lcom/nettv/livestore/activities/LiveActivity;->move_pos:I

    if-ne v2, v3, :cond_0

    .line 3
    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgChannels:Lio/realm/RealmResults;

    invoke-virtual {v2, v1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nettv/livestore/models/EPGChannel;

    iput-object v2, p0, Lcom/nettv/livestore/activities/LiveActivity;->keySelChannel:Lcom/nettv/livestore/models/EPGChannel;

    .line 4
    iput v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->keySelChannel:Lcom/nettv/livestore/models/EPGChannel;

    const/16 v2, 0x8

    const-string v3, ""

    if-nez v1, :cond_2

    .line 6
    iput-object v3, p0, Lcom/nettv/livestore/activities/LiveActivity;->key:Ljava/lang/String;

    .line 7
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_num:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_num:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getNo_channels()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 10
    :cond_2
    iput-object v3, p0, Lcom/nettv/livestore/activities/LiveActivity;->key:Ljava/lang/String;

    .line 11
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_num:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_num:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->categoryModels:Ljava/util/List;

    iget v3, p0, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "all_id"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->keySelChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_id()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/nettv/livestore/activities/LiveActivity;->keySelChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/nettv/livestore/activities/LiveActivity;->isAdultChannel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->keySelChannel:Lcom/nettv/livestore/models/EPGChannel;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/nettv/livestore/activities/LiveActivity;->showChannelLockDlgFragment(Lcom/nettv/livestore/models/EPGChannel;II)V

    goto :goto_1

    .line 15
    :cond_3
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->keySelChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-direct {p0, v1}, Lcom/nettv/livestore/activities/LiveActivity;->playSelectedChannel(Lcom/nettv/livestore/models/EPGChannel;)V

    .line 16
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    iget v3, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-virtual {v1, v3}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    .line 17
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgTicker:Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 18
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->stream_id:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/nettv/livestore/activities/LiveActivity;->getShortEpg(Ljava/lang/String;)V

    .line 19
    iget v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-direct {p0, v1}, Lcom/nettv/livestore/activities/LiveActivity;->changeChannelInfo(I)V

    .line 20
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v2, :cond_4

    iget-boolean v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->is_full:Z

    if-eqz v1, :cond_4

    .line 21
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 22
    :cond_4
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->hideInfoTicker:Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda2;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 23
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->mInfoHideTimer()V

    :goto_1
    return-void
.end method

.method private getRealChannelPosition(Lcom/nettv/livestore/models/EPGChannel;)I
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgChannels:Lio/realm/RealmResults;

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
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceServerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nettv/livestore/remote/RetroClass;->getAPIService(Ljava/lang/String;)Lcom/nettv/livestore/remote/APIService;

    move-result-object v0

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceUsername()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferencePassword()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/nettv/livestore/remote/APIService;->get_short_epg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/nettv/livestore/activities/LiveActivity$4;

    invoke-direct {v0, p0}, Lcom/nettv/livestore/activities/LiveActivity$4;-><init>(Lcom/nettv/livestore/activities/LiveActivity;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveActivity;->showEpgInfo(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method private goToAddGroupActivity()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->categoryModels:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "resume_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->saveCategoryAndChannelPosition()V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->releaseMediaPlayer()V

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->someActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/nettv/livestore/activities/AddGroupActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method private goToCatchupActivity()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getNo_epg_avaliable()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->releaseMediaPlayer()V

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nettv/livestore/apps/LTVApp;->channelName:Ljava/lang/String;

    .line 6
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nettv/livestore/activities/CatchUpActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->someActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private goToSearchActivity()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->releaseMediaPlayer()V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nettv/livestore/activities/SearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "is_live"

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->someActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method private goToSeriesActivity()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->releaseMediaPlayer()V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nettv/livestore/activities/SeriesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->categoryModels:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "resume_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->saveCategoryAndChannelPosition()V

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private goToSettingActivity()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->releaseMediaPlayer()V

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->someActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/nettv/livestore/activities/SettingActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method private goToVodActivity()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->releaseMediaPlayer()V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nettv/livestore/activities/MovieActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->categoryModels:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "resume_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->saveCategoryAndChannelPosition()V

    .line 5
    :cond_0
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

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->main_lay:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b02dd

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    const/4 v1, 0x3

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setResizeMode(I)V

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->getSubtitleView()Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setApplyEmbeddedStyles(Z)V

    .line 5
    new-instance v0, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

    iget-object v3, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v3}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceSubtitleColor()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    iget-object v3, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

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
    iget-object v3, p0, Lcom/nettv/livestore/activities/LiveActivity;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->getSubtitleView()Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-result-object v3

    iget-object v4, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v4}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceSubtitleSize()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v1, v4}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setFixedTextSize(IF)V

    .line 7
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->getSubtitleView()Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setStyle(Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;)V

    const v0, 0x7f0b03e8

    .line 8
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_num:Landroid/widget/TextView;

    const v0, 0x7f0b03d9

    .line 9
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_home:Landroid/widget/TextView;

    const v0, 0x7f0b03dc

    .line 10
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_live:Landroid/widget/TextView;

    const v0, 0x7f0b03e2

    .line 11
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_movie:Landroid/widget/TextView;

    const v0, 0x7f0b03f7

    .line 12
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_series:Landroid/widget/TextView;

    const v0, 0x7f0b03e4

    .line 13
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_name:Landroid/widget/TextView;

    const v0, 0x7f0b012d

    .line 14
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->et_search:Landroid/widget/EditText;

    const v0, 0x7f0b02ea

    .line 15
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/view/LiveVerticalGridView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    const v0, 0x7f0b02eb

    .line 16
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/view/LiveVerticalGridView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    const v0, 0x7f0b0255

    .line 17
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->ly_surface:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b02ee

    .line 18
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_epg:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0b008d

    .line 19
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->btn_fav:Landroid/widget/Button;

    const v0, 0x7f0b008a

    .line 20
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->btn_catch_up:Landroid/widget/Button;

    const v0, 0x7f0b009f

    .line 21
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->btn_search:Landroid/widget/Button;

    const v0, 0x7f0b03da

    .line 22
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_left:Landroid/widget/TextView;

    const v0, 0x7f0b03f3

    .line 23
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_right:Landroid/widget/TextView;

    const v0, 0x7f0b03bb

    .line 24
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_audio:Landroid/widget/TextView;

    const v0, 0x7f0b03d0

    .line 25
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_epg:Landroid/widget/TextView;

    const v0, 0x7f0b0403

    .line 26
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_vod:Landroid/widget/TextView;

    const v0, 0x7f0b03f4

    .line 27
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_search:Landroid/widget/TextView;

    const v0, 0x7f0b03bd

    .line 28
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_bottom_series:Landroid/widget/TextView;

    const v0, 0x7f0b03d4

    .line 29
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_fav:Landroid/widget/TextView;

    const v0, 0x7f0b03fc

    .line 30
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_subtitle:Landroid/widget/TextView;

    const v0, 0x7f0b03dd

    .line 31
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_lock:Landroid/widget/TextView;

    .line 32
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_left:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getPrevious_channel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_right:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getNext_channel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_home:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getHome()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_live:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getLive_tv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_movie:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getMovies()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_series:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getSeries()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_audio:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getAudio_track()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->btn_catch_up:Landroid/widget/Button;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getCatch_up()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->btn_search:Landroid/widget/Button;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getSearch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->btn_fav:Landroid/widget/Button;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getAdd_to_favorite()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_epg:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getEpg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_vod:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getMovies()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_search:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getSearch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_bottom_series:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getSeries()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_fav:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getFavorite()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_subtitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getSubtitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_lock:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getLock()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/VerticalGridView;->setNumColumns(I)V

    .line 50
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v2}, Lcom/nettv/livestore/view/LiveVerticalGridView;->setLoop(Z)V

    .line 51
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    new-array v0, v1, [Landroid/view/View;

    const/4 v3, 0x0

    aput-object v3, v0, v2

    .line 52
    iget-object v4, p0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    new-instance v5, Lcom/nettv/livestore/activities/LiveActivity$5;

    invoke-direct {v5, v0}, Lcom/nettv/livestore/activities/LiveActivity$5;-><init>([Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroidx/leanback/widget/BaseGridView;->setOnChildViewHolderSelectedListener(Landroidx/leanback/widget/OnChildViewHolderSelectedListener;)V

    .line 53
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/VerticalGridView;->setNumColumns(I)V

    .line 54
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v2}, Lcom/nettv/livestore/view/LiveVerticalGridView;->setLoop(Z)V

    .line 55
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    new-array v0, v1, [Landroid/view/View;

    aput-object v3, v0, v2

    .line 56
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    new-instance v2, Lcom/nettv/livestore/activities/LiveActivity$6;

    invoke-direct {v2, v0}, Lcom/nettv/livestore/activities/LiveActivity$6;-><init>([Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroidx/leanback/widget/BaseGridView;->setOnChildViewHolderSelectedListener(Landroidx/leanback/widget/OnChildViewHolderSelectedListener;)V

    const v0, 0x7f0b023d

    .line 57
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b0236

    .line 58
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->ly_buttons:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b0230

    .line 59
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->ly_actions:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b023f

    .line 60
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v0, 0x7f0b0246

    .line 61
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v0, 0x7f0b0259

    .line 62
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v0, 0x7f0b0250

    .line 63
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v0, 0x7f0b0241

    .line 64
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v0, 0x7f0b024e

    .line 65
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v0, 0x7f0b0253

    .line 66
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v0, 0x7f0b0232

    .line 67
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v0, 0x7f0b01d3

    .line 68
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->image_epg:Landroid/widget/ImageButton;

    const v0, 0x7f0b01dc

    .line 69
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->image_lock:Landroid/widget/ImageButton;

    const v0, 0x7f0b01f0

    .line 70
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->image_vod:Landroid/widget/ImageButton;

    const v0, 0x7f0b01e8

    .line 71
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->image_series:Landroid/widget/ImageButton;

    const v0, 0x7f0b01ea

    .line 72
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->image_subtitle:Landroid/widget/ImageButton;

    const v0, 0x7f0b01c4

    .line 73
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->image_audio:Landroid/widget/ImageButton;

    const v0, 0x7f0b01d6

    .line 74
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->image_fav:Landroid/widget/ImageButton;

    const v0, 0x7f0b01e7

    .line 75
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->image_search:Landroid/widget/ImageButton;

    const v0, 0x7f0b0327

    .line 76
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->seekBar:Landroid/widget/SeekBar;

    const v0, 0x7f0b03c9

    .line 77
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_current_time:Landroid/widget/TextView;

    const v0, 0x7f0b03c8

    .line 78
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_current_program:Landroid/widget/TextView;

    const v0, 0x7f0b03e6

    .line 79
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_next_time:Landroid/widget/TextView;

    const v0, 0x7f0b03e5

    .line 80
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_next_program:Landroid/widget/TextView;

    const v0, 0x7f0b03d6

    .line 81
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_group:Landroid/widget/TextView;

    const v0, 0x7f0b03c3

    .line 82
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_channel_name:Landroid/widget/TextView;

    const v0, 0x7f0b03f2

    .line 83
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_resolution:Landroid/widget/TextView;

    const v0, 0x7f0b00ba

    .line 84
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_image:Landroid/widget/ImageView;

    const v0, 0x7f0b01d0

    .line 85
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->image_def:Landroid/widget/ImageView;

    .line 86
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->image_epg:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 87
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->image_vod:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 88
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->image_series:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 89
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->image_fav:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 90
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->image_search:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 91
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->image_subtitle:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 92
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->image_audio:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 93
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->image_lock:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 94
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->image_epg:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->image_vod:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->image_series:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->image_fav:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->image_search:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->image_subtitle:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->image_audio:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->image_lock:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_live:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_home:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_series:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_movie:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->btn_fav:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->btn_catch_up:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->btn_search:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->et_search:Landroid/widget/EditText;

    new-instance v1, Lcom/nettv/livestore/activities/LiveActivity$7;

    invoke-direct {v1, p0}, Lcom/nettv/livestore/activities/LiveActivity$7;-><init>(Lcom/nettv/livestore/activities/LiveActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private isAdultChannel(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

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

.method private synthetic lambda$controlFav$5(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->categoryModels:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

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
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->channelAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object p1

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->categoryModels:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CategoryModel;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v1

    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceLiveOrder()I

    move-result v2

    const-string v3, ""

    invoke-virtual {p1, v0, v3, v1, v2}, Lcom/nettv/livestore/helper/RealmController;->getLiveChannelsByCategory(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmResults;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgChannels:Lio/realm/RealmResults;

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->channelAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;->updateData(Ljava/util/List;I)V

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/RealmController;->getFavChannelNames()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceLiveFavChannels(Ljava/util/List;)V

    .line 6
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->categoryAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method private synthetic lambda$controlLock$6(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->categoryModels:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

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
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->channelAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object p1

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->categoryModels:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CategoryModel;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v1

    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceLiveOrder()I

    move-result v2

    const-string v3, ""

    invoke-virtual {p1, v0, v3, v1, v2}, Lcom/nettv/livestore/helper/RealmController;->getLiveChannelsByCategory(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmResults;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgChannels:Lio/realm/RealmResults;

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->channelAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;->updateData(Ljava/util/List;I)V

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/RealmController;->getLockChannelNames()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceLiveLockChannels(Ljava/util/List;)V

    .line 6
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->categoryAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method private synthetic lambda$epgTimer$4(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgTime:I

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveActivity;->getShortEpg(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->runNextEpgTicker()V

    return-void
.end method

.method private synthetic lambda$mInfoHideTimer$7()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->hide_time:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    sget-object v0, Lcom/nettv/livestore/apps/FocusStatus;->second:Lcom/nettv/livestore/apps/FocusStatus;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->focusStatus:Lcom/nettv/livestore/apps/FocusStatus;

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/LiveActivity;->showAndHideActionsButtons(Z)V

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->moveNexHideTicker()V

    return-void
.end method

.method private synthetic lambda$moveTimer$8()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->moveTicker:Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda2;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->move_time:I

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->findChannelInfo()V

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->moveNextTicker()V

    return-void
.end method

.method private synthetic lambda$new$9(Landroidx/activity/result/ActivityResult;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 2
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string v0, "is_changed"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "from_search"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->is_full:Z

    .line 5
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->setFull()V

    .line 6
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceCategoryPos()I

    move-result v0

    iput v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

    .line 7
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceChannelPos()I

    move-result v0

    iput v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    .line 8
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v0

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->categoryModels:Ljava/util/List;

    iget v3, p0, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/CategoryModel;

    iget-object v3, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v3}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v3

    iget-object v4, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v4}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceLiveOrder()I

    move-result v4

    const-string v5, ""

    invoke-virtual {v0, v1, v5, v3, v4}, Lcom/nettv/livestore/helper/RealmController;->getLiveChannelsByCategory(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmResults;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgChannels:Lio/realm/RealmResults;

    .line 9
    iget v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-virtual {v0}, Lio/realm/RealmResults;->size()I

    move-result v0

    sub-int/2addr v0, p1

    if-le v1, v0, :cond_0

    .line 10
    iput v2, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->channelAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgChannels:Lio/realm/RealmResults;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-virtual {p1, v0, v1}, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;->updateData(Ljava/util/List;I)V

    .line 12
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgChannels:Lio/realm/RealmResults;

    iget v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-virtual {p1, v0}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/EPGChannel;

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    .line 13
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    iget v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    .line 14
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    iget v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/BaseGridView;->scrollToPosition(I)V

    .line 15
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->categoryAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;

    iget v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;->setCategoryPosition(I)V

    .line 16
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result p1

    if-nez p1, :cond_1

    .line 17
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgTicker:Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 18
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getStream_id()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveActivity;->epgTimer(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 19
    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveActivity;->showEpgInfo(Ljava/util/List;)V

    .line 20
    :goto_0
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_name:Ljava/lang/String;

    .line 21
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_name:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_favorite()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveActivity;->showFavImageIcon(Z)V

    .line 23
    iget p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveActivity;->changeChannelInfo(I)V

    goto :goto_1

    .line 24
    :cond_2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "add_group"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 25
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedLiveCategoryModels()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->categoryModels:Ljava/util/List;

    .line 26
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->categoryAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;

    invoke-virtual {v0, p1}, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;->setCategoryModels(Ljava/util/List;)V

    .line 27
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 28
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveActivity;->playSelectedChannel(Lcom/nettv/livestore/models/EPGChannel;)V

    .line 29
    invoke-direct {p0, v2}, Lcom/nettv/livestore/activities/LiveActivity;->setFocusButtons(Z)V

    .line 30
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 31
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    iget v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    :cond_4
    return-void
.end method

.method private synthetic lambda$onCreate$0(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 4

    .line 1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->pre_category_pos:I

    .line 2
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-nez p3, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->goToAddGroupActivity()V

    goto/16 :goto_1

    .line 5
    :cond_0
    iget p3, p0, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq p3, v0, :cond_6

    .line 6
    iget-object p3, p0, Lcom/nettv/livestore/activities/LiveActivity;->et_search:Landroid/widget/EditText;

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

    if-nez p3, :cond_3

    invoke-virtual {p1}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto/16 :goto_0

    .line 8
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget p3, p0, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " \u2022 Group : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/nettv/livestore/activities/LiveActivity;->categoryModels:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {p3}, Lcom/nettv/livestore/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/nettv/livestore/activities/LiveActivity;->categoryName:Ljava/lang/String;

    .line 10
    iget p2, p0, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

    const/4 p3, 0x4

    const/4 v1, -0x1

    if-le p2, p3, :cond_2

    iget-object p3, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p3}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupCategory()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, 0x5

    if-ge p2, p3, :cond_2

    .line 11
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupCategory()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_6

    .line 12
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupCategory()Ljava/util/List;

    move-result-object p1

    iget p2, p0, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

    add-int/lit8 p2, p2, -0x5

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 13
    iget-object p2, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p2, p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupChannels(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 14
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/nettv/livestore/helper/RealmController;->getEpgChannelsByNameArray(Ljava/util/List;Ljava/lang/String;)Lio/realm/RealmResults;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgChannels:Lio/realm/RealmResults;

    .line 15
    iget-object p2, p0, Lcom/nettv/livestore/activities/LiveActivity;->channelAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;

    invoke-virtual {p2, p1, v1}, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;->updateData(Ljava/util/List;I)V

    .line 16
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1, v2}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    goto :goto_1

    .line 17
    :cond_2
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object p2

    iget-object p3, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p3}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result p3

    iget-object v3, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v3}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceLiveOrder()I

    move-result v3

    invoke-virtual {p2, p1, v0, p3, v3}, Lcom/nettv/livestore/helper/RealmController;->getLiveChannelsByCategory(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmResults;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgChannels:Lio/realm/RealmResults;

    .line 18
    iget-object p2, p0, Lcom/nettv/livestore/activities/LiveActivity;->channelAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;

    invoke-virtual {p2, p1, v1}, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;->updateData(Ljava/util/List;I)V

    .line 19
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1, v2}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    goto :goto_1

    .line 20
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 21
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceLiveLockChannels()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 22
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveActivity;->showLockDlgFragment(I)V

    goto :goto_1

    .line 23
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

    .line 24
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getStr_no_lock_channels()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 25
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveActivity;->showLockDlgFragment(I)V

    :cond_6
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic lambda$onCreate$1(Lcom/nettv/livestore/models/EPGChannel;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->pre_channel_pos:I

    .line 2
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_4

    .line 3
    iget-boolean p3, p0, Lcom/nettv/livestore/activities/LiveActivity;->is_full:Z

    if-nez p3, :cond_7

    .line 4
    iget-object p3, p0, Lcom/nettv/livestore/activities/LiveActivity;->stream_id:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getStream_id()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_1

    .line 5
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->categoryModels:Ljava/util/List;

    iget p2, p0, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

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
    iput p4, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    :cond_0
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->is_full:Z

    .line 8
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->setFull()V

    goto/16 :goto_1

    .line 9
    :cond_1
    iget-object p3, p0, Lcom/nettv/livestore/activities/LiveActivity;->categoryModels:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

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

    invoke-direct {p0, p3, v1}, Lcom/nettv/livestore/activities/LiveActivity;->isAdultChannel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 10
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2, p4}, Lcom/nettv/livestore/activities/LiveActivity;->showChannelLockDlgFragment(Lcom/nettv/livestore/models/EPGChannel;II)V

    goto/16 :goto_1

    .line 11
    :cond_2
    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_id()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3, v1}, Lcom/nettv/livestore/activities/LiveActivity;->isAdultChannel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_3

    iget-object p3, p0, Lcom/nettv/livestore/activities/LiveActivity;->categoryModels:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

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

    invoke-direct {p0, p1, p2, p4}, Lcom/nettv/livestore/activities/LiveActivity;->showChannelLockDlgFragment(Lcom/nettv/livestore/models/EPGChannel;II)V

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    .line 14
    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveActivity;->playSelectedChannel(Lcom/nettv/livestore/models/EPGChannel;)V

    goto :goto_1

    .line 15
    :cond_4
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 16
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/nettv/livestore/activities/LiveActivity;->controlFav(Lcom/nettv/livestore/models/EPGChannel;I)V

    .line 17
    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_favorite()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveActivity;->showFavImageIcon(Z)V

    goto :goto_1

    .line 18
    :cond_5
    iget-boolean p2, p0, Lcom/nettv/livestore/activities/LiveActivity;->is_full:Z

    if-nez p2, :cond_7

    .line 19
    iget-object p2, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result p2

    if-nez p2, :cond_6

    .line 20
    iget-object p2, p0, Lcom/nettv/livestore/activities/LiveActivity;->handler:Landroid/os/Handler;

    iget-object p3, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgTicker:Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 21
    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getStream_id()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/nettv/livestore/activities/LiveActivity;->epgTimer(Ljava/lang/String;)V

    goto :goto_0

    .line 22
    :cond_6
    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/LiveActivity;->showEpgInfo(Ljava/util/List;)V

    .line 23
    :goto_0
    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_name:Ljava/lang/String;

    .line 24
    iget-object p3, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_name:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_favorite()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveActivity;->showFavImageIcon(Z)V

    .line 26
    iget p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->pre_channel_pos:I

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveActivity;->changeChannelInfo(I)V

    :cond_7
    :goto_1
    return-object v0
.end method

.method private synthetic lambda$playSelectedChannel$3()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->categoryModels:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "resume_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->channelAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->channelAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;

    invoke-virtual {v0, v1}, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;->setSelectedPosition(I)V

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/BaseGridView;->scrollToPosition(I)V

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    .line 6
    iput v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->categoryAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$showSearchDlgFragment$2(Lcom/nettv/livestore/models/EPGChannel;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->releaseMediaPlayer()V

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->et_search:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 3
    iget v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

    const/4 v2, 0x4

    const-string v3, ""

    if-le v0, v2, :cond_0

    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupCategory()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    if-ge v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupCategory()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupCategory()Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

    add-int/lit8 v2, v2, -0x5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6
    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2, v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupChannels(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 7
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Lcom/nettv/livestore/helper/RealmController;->getEpgChannelsByNameArray(Ljava/util/List;Ljava/lang/String;)Lio/realm/RealmResults;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgChannels:Lio/realm/RealmResults;

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v0

    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveActivity;->categoryModels:Ljava/util/List;

    iget v4, p0, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nettv/livestore/models/CategoryModel;

    iget-object v4, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v4}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v4

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/nettv/livestore/helper/RealmController;->getLiveChannelsByCategory(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmResults;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgChannels:Lio/realm/RealmResults;

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->et_search:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    :cond_2
    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveActivity;->getRealChannelPosition(Lcom/nettv/livestore/models/EPGChannel;)I

    move-result v0

    iput v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    .line 11
    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v2, v0}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    .line 12
    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveActivity;->playSelectedChannel(Lcom/nettv/livestore/models/EPGChannel;)V

    .line 13
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 14
    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveActivity;->showEpgInfo(Ljava/util/List;)V

    goto :goto_1

    .line 15
    :cond_3
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->stream_id:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveActivity;->getShortEpg(Ljava/lang/String;)V

    .line 16
    :goto_1
    iget p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveActivity;->changeChannelInfo(I)V

    .line 17
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_favorite()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveActivity;->showFavImageIcon(Z)V

    .line 18
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->hideInfoTicker:Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda2;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 20
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->mInfoHideTimer()V

    return-void
.end method

.method private mInfoHideTimer()V
    .locals 2

    const/16 v0, 0xa

    .line 1
    iput v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->hide_time:I

    .line 2
    new-instance v0, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda2;-><init>(Lcom/nettv/livestore/activities/LiveActivity;I)V

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->hideInfoTicker:Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda2;

    .line 3
    invoke-virtual {v0}, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda2;->run()V

    return-void
.end method

.method private moveNexHideTicker()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->hide_time:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->hide_time:I

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    .line 3
    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveActivity;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nettv/livestore/activities/LiveActivity;->hideInfoTicker:Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda2;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private moveNextTicker()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->move_time:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->move_time:I

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    .line 3
    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveActivity;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nettv/livestore/activities/LiveActivity;->moveTicker:Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda2;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private moveTimer()V
    .locals 2

    const/4 v0, 0x2

    .line 1
    iput v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->move_time:I

    .line 2
    new-instance v0, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda2;-><init>(Lcom/nettv/livestore/activities/LiveActivity;I)V

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->moveTicker:Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda2;

    .line 3
    invoke-virtual {v0}, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda2;->run()V

    return-void
.end method

.method private playNextChannel()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgChannels:Lio/realm/RealmResults;

    invoke-virtual {v1}, Lio/realm/RealmResults;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    if-ge v0, v1, :cond_0

    .line 2
    iget v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    goto :goto_0

    .line 3
    :cond_0
    iput v3, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->categoryModels:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "all_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgChannels:Lio/realm/RealmResults;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-virtual {v0, v1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_id()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgChannels:Lio/realm/RealmResults;

    iget v4, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-virtual {v1, v4}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nettv/livestore/activities/LiveActivity;->isAdultChannel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgChannels:Lio/realm/RealmResults;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-virtual {v0, v1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/EPGChannel;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-direct {p0, v0, v1, v2}, Lcom/nettv/livestore/activities/LiveActivity;->showChannelLockDlgFragment(Lcom/nettv/livestore/models/EPGChannel;II)V

    goto/16 :goto_2

    .line 6
    :cond_1
    sget-object v0, Lcom/nettv/livestore/apps/Constants;->xxx_live_categories:Ljava/util/List;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->categoryModels:Ljava/util/List;

    iget v4, p0, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->categoryModels:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lock_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgChannels:Lio/realm/RealmResults;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-virtual {v0, v1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->is_locked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgChannels:Lio/realm/RealmResults;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-virtual {v0, v1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/EPGChannel;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-direct {p0, v0, v1, v2}, Lcom/nettv/livestore/activities/LiveActivity;->showChannelLockDlgFragment(Lcom/nettv/livestore/models/EPGChannel;II)V

    goto :goto_2

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgChannels:Lio/realm/RealmResults;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-virtual {v0, v1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/EPGChannel;

    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/LiveActivity;->playSelectedChannel(Lcom/nettv/livestore/models/EPGChannel;)V

    .line 9
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v0

    if-nez v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgTicker:Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->stream_id:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/LiveActivity;->epgTimer(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/LiveActivity;->showEpgInfo(Ljava/util/List;)V

    .line 13
    :goto_1
    iget v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/LiveActivity;->changeChannelInfo(I)V

    .line 14
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    .line 15
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->hideInfoTicker:Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda2;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 17
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->mInfoHideTimer()V

    .line 18
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    :goto_2
    return-void
.end method

.method private playPreviousChannel()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    sub-int/2addr v0, v1

    .line 2
    iput v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgChannels:Lio/realm/RealmResults;

    invoke-virtual {v0}, Lio/realm/RealmResults;->size()I

    move-result v0

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->categoryModels:Ljava/util/List;

    iget v2, p0, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "all_id"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgChannels:Lio/realm/RealmResults;

    iget v2, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-virtual {v0, v2}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_id()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgChannels:Lio/realm/RealmResults;

    iget v3, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-virtual {v2, v3}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/nettv/livestore/activities/LiveActivity;->isAdultChannel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgChannels:Lio/realm/RealmResults;

    iget v2, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-virtual {v0, v2}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/EPGChannel;

    iget v2, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-direct {p0, v0, v2, v1}, Lcom/nettv/livestore/activities/LiveActivity;->showChannelLockDlgFragment(Lcom/nettv/livestore/models/EPGChannel;II)V

    goto/16 :goto_2

    .line 6
    :cond_1
    sget-object v0, Lcom/nettv/livestore/apps/Constants;->xxx_live_categories:Ljava/util/List;

    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveActivity;->categoryModels:Ljava/util/List;

    iget v3, p0, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->categoryModels:Ljava/util/List;

    iget v2, p0, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "lock_id"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgChannels:Lio/realm/RealmResults;

    iget v2, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-virtual {v0, v2}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->is_locked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgChannels:Lio/realm/RealmResults;

    iget v2, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-virtual {v0, v2}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/EPGChannel;

    iget v2, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-direct {p0, v0, v2, v1}, Lcom/nettv/livestore/activities/LiveActivity;->showChannelLockDlgFragment(Lcom/nettv/livestore/models/EPGChannel;II)V

    goto :goto_2

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgChannels:Lio/realm/RealmResults;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-virtual {v0, v1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/EPGChannel;

    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/LiveActivity;->playSelectedChannel(Lcom/nettv/livestore/models/EPGChannel;)V

    .line 9
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v0

    if-nez v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgTicker:Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->stream_id:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/LiveActivity;->epgTimer(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/LiveActivity;->showEpgInfo(Ljava/util/List;)V

    .line 13
    :goto_1
    iget v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/LiveActivity;->changeChannelInfo(I)V

    .line 14
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    .line 16
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->hideInfoTicker:Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda2;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 18
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->mInfoHideTimer()V

    .line 19
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    :goto_2
    return-void
.end method

.method private playSelectedChannel(Lcom/nettv/livestore/models/EPGChannel;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

    invoke-virtual {v0, v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceCategoryPos(I)V

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-virtual {v0, v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceChannelPos(I)V

    .line 3
    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    .line 4
    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getStream_id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->stream_id:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_name:Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->is_favorite()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/LiveActivity;->showFavImageIcon(Z)V

    .line 7
    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_locked()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveActivity;->showLockImageIcon(Z)V

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->content_url:Ljava/lang/String;

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceServerUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceUsername()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferencePassword()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveActivity;->stream_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v3}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceLiveStreamFormat()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v1, v2, v3}, Lcom/nettv/livestore/helper/GetSharedInfo;->getLiveChannelUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->content_url:Ljava/lang/String;

    .line 11
    :goto_0
    sget-object p1, Lcom/nettv/livestore/apps/Constants;->xxx_live_categories:Ljava/util/List;

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->categoryModels:Ljava/util/List;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_id()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/nettv/livestore/activities/LiveActivity;->isAdultChannel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 12
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object p1

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/activities/LiveActivity;)V

    invoke-virtual {p1, v1, v0, v2}, Lcom/nettv/livestore/helper/RealmController;->addToRecentChannels(Ljava/lang/String;ZLcom/nettv/livestore/helper/RealmChangeItemListener;)V

    goto :goto_1

    .line 13
    :cond_1
    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/LiveActivity;->showLockImageIcon(Z)V

    .line 14
    :goto_1
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->categoryAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 15
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->releaseMediaPlayer()V

    .line 16
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->content_url:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveActivity;->playVideo(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private playVideo(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->release()V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->image_def:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->image_def:Landroid/widget/ImageView;

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
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    .line 10
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->trackSelectionParameters:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    .line 11
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    .line 12
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->createMediaSourceFactory()Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setMediaSourceFactory(Lcom/google/android/exoplayer2/source/MediaSource$Factory;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setTrackSelector(Lcom/google/android/exoplayer2/trackselection/TrackSelector;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 14
    invoke-direct {p0, v0, v1}, Lcom/nettv/livestore/activities/LiveActivity;->setRenderersFactory(Lcom/google/android/exoplayer2/ExoPlayer$Builder;Z)V

    .line 15
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->build()Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 16
    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveActivity;->trackSelectionParameters:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/Player;->setTrackSelectionParameters(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    .line 17
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    new-instance v2, Lcom/nettv/livestore/activities/LiveActivity$3;

    invoke-direct {v2, p0}, Lcom/nettv/livestore/activities/LiveActivity$3;-><init>(Lcom/nettv/livestore/activities/LiveActivity;)V

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/ExoPlayer;->addAnalyticsListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    .line 18
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    new-instance v2, Lcom/nettv/livestore/activities/LiveActivity$PlayerEventListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/nettv/livestore/activities/LiveActivity$PlayerEventListener;-><init>(Lcom/nettv/livestore/activities/LiveActivity;Lcom/nettv/livestore/activities/LiveActivity$1;)V

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/Player;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 19
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    new-instance v2, Lcom/google/android/exoplayer2/util/EventLogger;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/util/EventLogger;-><init>()V

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/ExoPlayer;->addAnalyticsListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    .line 20
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    sget-object v2, Lcom/google/android/exoplayer2/audio/AudioAttributes;->DEFAULT:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    invoke-interface {v0, v2, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;Z)V

    .line 21
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    .line 22
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    .line 23
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player;->setMediaItem(Lcom/google/android/exoplayer2/MediaItem;)V

    .line 24
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->prepare()V

    .line 25
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->play()V

    return-void
.end method

.method private releaseMediaPlayer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->stop()V

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->release()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 5
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    return-void
.end method

.method private runNextEpgTicker()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgTime:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgTime:I

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    add-long/2addr v0, v2

    .line 3
    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveActivity;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgTicker:Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private saveCategoryAndChannelPosition()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_name()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/nettv/livestore/activities/LiveActivity;->categoryModels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 4
    iget-object v3, p0, Lcom/nettv/livestore/activities/LiveActivity;->categoryModels:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_id()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 6
    :goto_1
    iget-object v4, p0, Lcom/nettv/livestore/activities/LiveActivity;->categoryModels:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 7
    iget-object v4, p0, Lcom/nettv/livestore/activities/LiveActivity;->categoryModels:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v4}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 8
    :cond_4
    :goto_2
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v0

    iget-object v3, p0, Lcom/nettv/livestore/activities/LiveActivity;->categoryModels:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nettv/livestore/models/CategoryModel;

    iget-object v4, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v4}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v4

    iget-object v5, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v5}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceLiveOrder()I

    move-result v5

    const-string v6, ""

    invoke-virtual {v0, v3, v6, v4, v5}, Lcom/nettv/livestore/helper/RealmController;->getLiveChannelsByCategory(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmResults;

    move-result-object v0

    const/4 v3, 0x0

    .line 9
    :goto_3
    invoke-virtual {v0}, Lio/realm/RealmResults;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 10
    iget-object v4, p0, Lcom/nettv/livestore/activities/LiveActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v4}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v5}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v1, v3

    goto :goto_4

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 11
    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0, v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceCategoryPos(I)V

    .line 12
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0, v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceChannelPos(I)V

    return-void
.end method

.method private searchChannelsInCategory(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupCategory()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupCategory()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupCategory()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

    add-int/lit8 v1, v1, -0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1, v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupChannels(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/nettv/livestore/helper/RealmController;->getEpgChannelsByNameArray(Ljava/util/List;Ljava/lang/String;)Lio/realm/RealmResults;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgChannels:Lio/realm/RealmResults;

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v0

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->categoryModels:Ljava/util/List;

    iget v2, p0, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/CategoryModel;

    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v2

    iget-object v3, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v3}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceLiveOrder()I

    move-result v3

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/nettv/livestore/helper/RealmController;->getLiveChannelsByCategory(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmResults;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgChannels:Lio/realm/RealmResults;

    .line 7
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->channelAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgChannels:Lio/realm/RealmResults;

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;->updateData(Ljava/util/List;I)V

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    .line 9
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/BaseGridView;->scrollToPosition(I)V

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
    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_current_program:Landroid/widget/TextView;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nettv/livestore/models/CatchUpEpg;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/CatchUpEpg;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nettv/livestore/utils/Utils;->decode64String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_current_time:Landroid/widget/TextView;

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
    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveActivity;->seekBar:Landroid/widget/SeekBar;

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
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_next_program:Landroid/widget/TextView;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/CatchUpEpg;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/CatchUpEpg;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nettv/livestore/utils/Utils;->decode64String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_next_time:Landroid/widget/TextView;

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
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_next_time:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_next_program:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getNo_information()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_current_time:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/WordModels;->getNo_information()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_current_program:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 13
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_next_time:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_next_program:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getNo_information()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private setFocusButtons(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->btn_catch_up:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->btn_fav:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->btn_search:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method private setFocusTopView(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_home:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_live:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_movie:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_series:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->et_search:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method private setFull()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->is_full:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->btn_catch_up:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->btn_fav:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->btn_search:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v4, p0, Lcom/nettv/livestore/activities/LiveActivity;->ly_surface:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/nettv/livestore/activities/LiveActivity;->setMargins(Landroid/view/View;IIII)V

    .line 8
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 9
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->hideInfoTicker:Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda2;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->mInfoHideTimer()V

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    .line 12
    iget-object v4, p0, Lcom/nettv/livestore/activities/LiveActivity;->ly_surface:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v3, p0

    move v5, v8

    move v6, v8

    move v7, v8

    invoke-direct/range {v3 .. v8}, Lcom/nettv/livestore/activities/LiveActivity;->setMargins(Landroid/view/View;IIII)V

    .line 13
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->btn_catch_up:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->btn_fav:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->btn_search:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nettv/livestore/activities/LiveActivity;->hideInfoTicker:Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda2;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 17
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    invoke-direct {p0, v2}, Lcom/nettv/livestore/activities/LiveActivity;->showAndHideActionsButtons(Z)V

    .line 19
    sget-object v0, Lcom/nettv/livestore/apps/FocusStatus;->second:Lcom/nettv/livestore/apps/FocusStatus;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->focusStatus:Lcom/nettv/livestore/apps/FocusStatus;

    .line 20
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 21
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 22
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->channelAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-virtual {v0, v1}, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;->setSelectedPosition(I)V

    .line 23
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 24
    :goto_0
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 25
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->main_lay:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 26
    iget-boolean v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->is_full:Z

    const v2, 0x7f0b01b6

    const v3, 0x7f0b01b5

    const v4, 0x7f0b0410

    const v5, 0x7f0b040f

    if-eqz v1, :cond_2

    const v1, -0x41947ae1    # -0.23f

    .line 27
    invoke-virtual {v0, v5, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelinePercent(IF)V

    const/4 v1, 0x0

    .line 28
    invoke-virtual {v0, v4, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelinePercent(IF)V

    .line 29
    invoke-virtual {v0, v3, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelinePercent(IF)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 30
    invoke-virtual {v0, v2, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelinePercent(IF)V

    goto :goto_1

    :cond_2
    const v1, 0x3e6b851f    # 0.23f

    .line 31
    invoke-virtual {v0, v5, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelinePercent(IF)V

    const/high16 v1, 0x3f000000    # 0.5f

    .line 32
    invoke-virtual {v0, v4, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelinePercent(IF)V

    const v1, 0x3dcccccd    # 0.1f

    .line 33
    invoke-virtual {v0, v3, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelinePercent(IF)V

    const v1, 0x3f19999a    # 0.6f

    .line 34
    invoke-virtual {v0, v2, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelinePercent(IF)V

    .line 35
    :goto_1
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->main_lay:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method private setMargins(Landroid/view/View;IIII)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_0
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

.method private showAndHideActionsButtons(Z)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->ly_buttons:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->ly_actions:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->image_epg:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->ly_buttons:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->ly_actions:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private showAudioTrack()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 3
    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/WordModels;->getAudio_track()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eq v3, v5, :cond_2

    if-ne v3, v1, :cond_1

    .line 5
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTypeSupport(I)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 6
    :goto_1
    new-instance v3, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;

    iget-object v5, p0, Lcom/nettv/livestore/activities/LiveActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

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

    goto :goto_2

    .line 11
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 12
    invoke-virtual {v2}, Lcom/nettv/livestore/models/WordModels;->getNo_audio()Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_2
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
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceParentPassword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nettv/livestore/dlgfragment/LockDlgFragment;->newInstance(Ljava/lang/String;)Lcom/nettv/livestore/dlgfragment/LockDlgFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->lockDlgFragment:Lcom/nettv/livestore/dlgfragment/LockDlgFragment;

    .line 6
    new-instance v3, Lcom/nettv/livestore/activities/LiveActivity$2;

    invoke-direct {v3, p0, p3, p2, p1}, Lcom/nettv/livestore/activities/LiveActivity$2;-><init>(Lcom/nettv/livestore/activities/LiveActivity;IILcom/nettv/livestore/models/EPGChannel;)V

    invoke-virtual {v1, v3}, Lcom/nettv/livestore/dlgfragment/LockDlgFragment;->setOnPinEventListener(Lcom/nettv/livestore/dlgfragment/LockDlgFragment$OnPinEventListener;)V

    .line 7
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->lockDlgFragment:Lcom/nettv/livestore/dlgfragment/LockDlgFragment;

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
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgAdapter:Lcom/nettv/livestore/adapter/EpgRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/nettv/livestore/adapter/EpgRecyclerAdapter;->setEpgList(Ljava/util/List;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveActivity;->setCurrentEpgEvent(Ljava/util/List;)V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgAdapter:Lcom/nettv/livestore/adapter/EpgRecyclerAdapter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/adapter/EpgRecyclerAdapter;->setEpgList(Ljava/util/List;)V

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveActivity;->setCurrentEpgEvent(Ljava/util/List;)V

    :goto_1
    return-void
.end method

.method private showFavImageIcon(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->btn_fav:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getRemove_favorites()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->btn_fav:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getAdd_to_favorite()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private showLockDlgFragment(I)V
    .locals 4

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

    if-eqz v3, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-static {v1, v3, p1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceParentPassword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nettv/livestore/dlgfragment/LockDlgFragment;->newInstance(Ljava/lang/String;)Lcom/nettv/livestore/dlgfragment/LockDlgFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->lockDlgFragment:Lcom/nettv/livestore/dlgfragment/LockDlgFragment;

    .line 6
    new-instance v3, Lcom/nettv/livestore/activities/LiveActivity$1;

    invoke-direct {v3, p0, p1}, Lcom/nettv/livestore/activities/LiveActivity$1;-><init>(Lcom/nettv/livestore/activities/LiveActivity;I)V

    invoke-virtual {v1, v3}, Lcom/nettv/livestore/dlgfragment/LockDlgFragment;->setOnPinEventListener(Lcom/nettv/livestore/dlgfragment/LockDlgFragment$OnPinEventListener;)V

    .line 7
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->lockDlgFragment:Lcom/nettv/livestore/dlgfragment/LockDlgFragment;

    invoke-virtual {p1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showLockImageIcon(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->image_lock:Landroid/widget/ImageButton;

    const v0, 0x7f080127

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->image_lock:Landroid/widget/ImageButton;

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
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->categoryModels:Ljava/util/List;

    iget v3, p0, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/CategoryModel;

    iget v3, p0, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

    iget-object v4, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v4}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v4

    invoke-static {p0, v1, v3, v4}, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->newInstance(Landroid/content/Context;Lcom/nettv/livestore/models/CategoryModel;IZ)Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->searchDlgFragment:Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;

    .line 6
    new-instance v3, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/activities/LiveActivity;)V

    invoke-virtual {v1, v3}, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->setSelectCurrentChannelListener(Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment$SelectCurrentChannelListener;)V

    .line 7
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->searchDlgFragment:Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showSubtitleTrack()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 3
    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/WordModels;->getSubtitle()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    .line 4
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    if-ne v4, v3, :cond_1

    .line 5
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTypeSupport(I)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 6
    :cond_2
    :goto_0
    new-instance v0, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;

    iget-object v4, p0, Lcom/nettv/livestore/activities/LiveActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-direct {v0, p0, v2, v4, v3}, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/google/android/exoplayer2/Player;I)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->setAllowAdaptiveSelections(Z)Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->build()Landroid/app/Dialog;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 10
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 11
    invoke-virtual {v2}, Lcom/nettv/livestore/models/WordModels;->getNo_subtitle()Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2b

    .line 2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_27

    const/16 v1, 0x59

    const/16 v5, 0xa

    if-eq v0, v1, :cond_25

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_23

    const/16 v1, 0x87

    if-eq v0, v1, :cond_1f

    const/16 v1, 0x88

    if-eq v0, v1, :cond_1e

    const/16 v1, 0xa6

    if-eq v0, v1, :cond_1d

    const/16 v1, 0xa7

    if-eq v0, v1, :cond_1c

    packed-switch v0, :pswitch_data_0

    const/4 v1, 0x3

    const/4 v5, 0x2

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_1

    .line 3
    :pswitch_0
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_num:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_num:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->key:Ljava/lang/String;

    const-string v2, "9"

    .line 5
    invoke-static {v0, v1, v2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->key:Ljava/lang/String;

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->move_pos:I

    .line 8
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->findAndShowChannel()V

    goto/16 :goto_1

    .line 9
    :pswitch_1
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_num:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_num:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 10
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->key:Ljava/lang/String;

    const-string v2, "8"

    .line 11
    invoke-static {v0, v1, v2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->key:Ljava/lang/String;

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->move_pos:I

    .line 14
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->findAndShowChannel()V

    goto/16 :goto_1

    .line 15
    :pswitch_2
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_num:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_num:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 16
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->key:Ljava/lang/String;

    const-string v2, "7"

    .line 17
    invoke-static {v0, v1, v2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->key:Ljava/lang/String;

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->move_pos:I

    .line 20
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->findAndShowChannel()V

    goto/16 :goto_1

    .line 21
    :pswitch_3
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_num:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_num:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 22
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->key:Ljava/lang/String;

    const-string v2, "6"

    .line 23
    invoke-static {v0, v1, v2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->key:Ljava/lang/String;

    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->move_pos:I

    .line 26
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->findAndShowChannel()V

    goto/16 :goto_1

    .line 27
    :pswitch_4
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_num:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_num:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 28
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->key:Ljava/lang/String;

    const-string v2, "5"

    .line 29
    invoke-static {v0, v1, v2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->key:Ljava/lang/String;

    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->move_pos:I

    .line 32
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->findAndShowChannel()V

    goto/16 :goto_1

    .line 33
    :pswitch_5
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_num:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 34
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_num:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 35
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->key:Ljava/lang/String;

    const-string v2, "4"

    .line 36
    invoke-static {v0, v1, v2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->key:Ljava/lang/String;

    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->move_pos:I

    .line 39
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->findAndShowChannel()V

    goto/16 :goto_1

    .line 40
    :pswitch_6
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_num:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 41
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_num:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 42
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->key:Ljava/lang/String;

    const-string v2, "3"

    .line 43
    invoke-static {v0, v1, v2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->key:Ljava/lang/String;

    .line 45
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->move_pos:I

    .line 46
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->findAndShowChannel()V

    goto/16 :goto_1

    .line 47
    :pswitch_7
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_num:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_7

    .line 48
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_num:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 49
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->key:Ljava/lang/String;

    const-string v2, "2"

    .line 50
    invoke-static {v0, v1, v2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->key:Ljava/lang/String;

    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->move_pos:I

    .line 53
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->findAndShowChannel()V

    goto/16 :goto_1

    .line 54
    :pswitch_8
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_num:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_8

    .line 55
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_num:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 56
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->key:Ljava/lang/String;

    const-string v2, "1"

    .line 57
    invoke-static {v0, v1, v2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->key:Ljava/lang/String;

    .line 59
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->move_pos:I

    .line 60
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->findAndShowChannel()V

    goto/16 :goto_1

    .line 61
    :pswitch_9
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_num:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_9

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_num:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 62
    :cond_9
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->key:Ljava/lang/String;

    const-string v2, "0"

    .line 64
    invoke-static {v0, v1, v2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->key:Ljava/lang/String;

    .line 66
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->move_pos:I

    .line 67
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->findAndShowChannel()V

    goto/16 :goto_1

    .line 68
    :pswitch_a
    iget-boolean v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->is_full:Z

    if-eqz v0, :cond_2b

    .line 69
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_2b

    .line 70
    iput-boolean v3, p0, Lcom/nettv/livestore/activities/LiveActivity;->is_full:Z

    .line 71
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->setFull()V

    return v4

    .line 72
    :pswitch_b
    iget-boolean v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->is_full:Z

    if-nez v0, :cond_a

    .line 73
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 74
    invoke-direct {p0, v4}, Lcom/nettv/livestore/activities/LiveActivity;->setFocusButtons(Z)V

    .line 75
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->btn_catch_up:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v4

    .line 76
    :cond_a
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->focusStatus:Lcom/nettv/livestore/apps/FocusStatus;

    sget-object v1, Lcom/nettv/livestore/apps/FocusStatus;->second:Lcom/nettv/livestore/apps/FocusStatus;

    if-ne v0, v1, :cond_b

    .line 77
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->playNextChannel()V

    goto/16 :goto_1

    .line 78
    :cond_b
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->image_audio:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2b

    return v4

    .line 79
    :pswitch_c
    iget-boolean v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->is_full:Z

    if-nez v0, :cond_c

    .line 80
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->btn_catch_up:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 81
    invoke-direct {p0, v3}, Lcom/nettv/livestore/activities/LiveActivity;->setFocusButtons(Z)V

    .line 82
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v4

    .line 83
    :cond_c
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->focusStatus:Lcom/nettv/livestore/apps/FocusStatus;

    sget-object v1, Lcom/nettv/livestore/apps/FocusStatus;->second:Lcom/nettv/livestore/apps/FocusStatus;

    if-ne v0, v1, :cond_d

    .line 84
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->playPreviousChannel()V

    goto/16 :goto_1

    .line 85
    :cond_d
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->image_epg:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2b

    return v4

    .line 86
    :pswitch_d
    iget-boolean v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->is_full:Z

    if-eqz v0, :cond_12

    .line 87
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_e

    .line 88
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->hideInfoTicker:Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda2;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 90
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->mInfoHideTimer()V

    goto/16 :goto_1

    .line 91
    :cond_e
    sget-object v0, Lcom/nettv/livestore/activities/LiveActivity$8;->$SwitchMap$com$vilhao$player$apps$FocusStatus:[I

    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveActivity;->focusStatus:Lcom/nettv/livestore/apps/FocusStatus;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v4, :cond_11

    if-eq v0, v5, :cond_10

    if-eq v0, v1, :cond_f

    goto/16 :goto_1

    :cond_f
    return v4

    .line 92
    :cond_10
    sget-object p1, Lcom/nettv/livestore/apps/FocusStatus;->third:Lcom/nettv/livestore/apps/FocusStatus;

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->focusStatus:Lcom/nettv/livestore/apps/FocusStatus;

    .line 93
    invoke-direct {p0, v4}, Lcom/nettv/livestore/activities/LiveActivity;->showAndHideActionsButtons(Z)V

    return v4

    .line 94
    :cond_11
    sget-object p1, Lcom/nettv/livestore/apps/FocusStatus;->second:Lcom/nettv/livestore/apps/FocusStatus;

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->focusStatus:Lcom/nettv/livestore/apps/FocusStatus;

    return v4

    .line 95
    :cond_12
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_home:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_live:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_movie:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_0

    .line 96
    :cond_13
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_series:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->et_search:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 97
    :cond_14
    invoke-direct {p0, v3}, Lcom/nettv/livestore/activities/LiveActivity;->setFocusTopView(Z)V

    .line 98
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v4

    .line 99
    :cond_15
    :goto_0
    invoke-direct {p0, v3}, Lcom/nettv/livestore/activities/LiveActivity;->setFocusTopView(Z)V

    .line 100
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v4

    .line 101
    :pswitch_e
    iget-boolean v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->is_full:Z

    if-eqz v0, :cond_18

    .line 102
    sget-object v0, Lcom/nettv/livestore/activities/LiveActivity$8;->$SwitchMap$com$vilhao$player$apps$FocusStatus:[I

    iget-object v6, p0, Lcom/nettv/livestore/activities/LiveActivity;->focusStatus:Lcom/nettv/livestore/apps/FocusStatus;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v0, v0, v6

    if-eq v0, v4, :cond_17

    if-eq v0, v5, :cond_17

    if-eq v0, v1, :cond_16

    goto/16 :goto_1

    .line 103
    :cond_16
    sget-object v0, Lcom/nettv/livestore/apps/FocusStatus;->second:Lcom/nettv/livestore/apps/FocusStatus;

    iput-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->focusStatus:Lcom/nettv/livestore/apps/FocusStatus;

    .line 104
    invoke-direct {p0, v3}, Lcom/nettv/livestore/activities/LiveActivity;->showAndHideActionsButtons(Z)V

    goto/16 :goto_1

    .line 105
    :cond_17
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return v4

    .line 106
    :cond_18
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_19

    iget v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->pre_category_pos:I

    if-nez v0, :cond_19

    .line 107
    invoke-direct {p0, v4}, Lcom/nettv/livestore/activities/LiveActivity;->setFocusTopView(Z)V

    .line 108
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_home:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v4

    .line 109
    :cond_19
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->pre_channel_pos:I

    if-nez v0, :cond_1a

    .line 110
    invoke-direct {p0, v4}, Lcom/nettv/livestore/activities/LiveActivity;->setFocusTopView(Z)V

    .line 111
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_series:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v4

    .line 112
    :cond_1a
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->btn_catch_up:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->btn_fav:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->btn_search:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2b

    :cond_1b
    return v4

    .line 113
    :pswitch_f
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->goToSeriesActivity()V

    goto/16 :goto_1

    .line 114
    :pswitch_10
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->goToVodActivity()V

    goto/16 :goto_1

    .line 115
    :cond_1c
    iget-boolean v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->is_full:Z

    if-eqz v0, :cond_2b

    .line 116
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->playPreviousChannel()V

    goto/16 :goto_1

    .line 117
    :cond_1d
    iget-boolean v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->is_full:Z

    if-eqz v0, :cond_2b

    .line 118
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->playNextChannel()V

    goto/16 :goto_1

    .line 119
    :cond_1e
    :pswitch_11
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->showSearchDlgFragment()V

    goto/16 :goto_1

    .line 120
    :cond_1f
    :pswitch_12
    iget-boolean v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->is_full:Z

    if-eqz v0, :cond_21

    .line 121
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    if-eqz v0, :cond_2b

    .line 122
    iget v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-direct {p0, v0, v1}, Lcom/nettv/livestore/activities/LiveActivity;->controlFav(Lcom/nettv/livestore/models/EPGChannel;I)V

    .line 123
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->is_favorite()Z

    move-result v0

    xor-int/2addr v0, v4

    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/LiveActivity;->showFavImageIcon(Z)V

    .line 124
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->is_favorite()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 125
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getChannel_added_to_fav()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 126
    :cond_20
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getChannel_removed_from_fav()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 127
    :cond_21
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgChannels:Lio/realm/RealmResults;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->pre_channel_pos:I

    invoke-virtual {v0, v1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/EPGChannel;

    if-eqz v0, :cond_2b

    .line 128
    iget v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-direct {p0, v0, v1}, Lcom/nettv/livestore/activities/LiveActivity;->controlFav(Lcom/nettv/livestore/models/EPGChannel;I)V

    .line 129
    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->is_favorite()Z

    move-result v1

    xor-int/2addr v1, v4

    invoke-direct {p0, v1}, Lcom/nettv/livestore/activities/LiveActivity;->showFavImageIcon(Z)V

    .line 130
    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->is_favorite()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 131
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getChannel_added_to_fav()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 132
    :cond_22
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getChannel_removed_from_fav()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 133
    :cond_23
    iget-boolean v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->is_full:Z

    if-nez v0, :cond_2b

    .line 134
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 135
    iget v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->pre_category_pos:I

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->categoryModels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0xb

    if-ge v0, v1, :cond_2b

    .line 136
    iget v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->pre_category_pos:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->pre_category_pos:I

    .line 137
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v1, v0}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    goto/16 :goto_1

    .line 138
    :cond_24
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 139
    iget v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->pre_channel_pos:I

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgChannels:Lio/realm/RealmResults;

    invoke-virtual {v1}, Lio/realm/RealmResults;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0xb

    if-ge v0, v1, :cond_2b

    .line 140
    iget v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->pre_channel_pos:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->pre_channel_pos:I

    .line 141
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v1, v0}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    goto :goto_1

    .line 142
    :cond_25
    iget-boolean v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->is_full:Z

    if-nez v0, :cond_2b

    .line 143
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 144
    iget v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->pre_category_pos:I

    if-le v0, v5, :cond_2b

    sub-int/2addr v0, v5

    .line 145
    iput v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->pre_category_pos:I

    .line 146
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v1, v0}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    goto :goto_1

    .line 147
    :cond_26
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 148
    iget v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->pre_channel_pos:I

    if-le v0, v5, :cond_2b

    sub-int/2addr v0, v5

    .line 149
    iput v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->pre_channel_pos:I

    .line 150
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v1, v0}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    goto :goto_1

    .line 151
    :cond_27
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_28

    .line 152
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 153
    invoke-direct {p0, v3}, Lcom/nettv/livestore/activities/LiveActivity;->showAndHideActionsButtons(Z)V

    .line 154
    sget-object p1, Lcom/nettv/livestore/apps/FocusStatus;->second:Lcom/nettv/livestore/apps/FocusStatus;

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->focusStatus:Lcom/nettv/livestore/apps/FocusStatus;

    return v4

    .line 155
    :cond_28
    iget-boolean v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->is_full:Z

    if-eqz v0, :cond_29

    .line 156
    iput-boolean v3, p0, Lcom/nettv/livestore/activities/LiveActivity;->is_full:Z

    .line 157
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->setFull()V

    return v4

    .line 158
    :cond_29
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->releaseMediaPlayer()V

    .line 159
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    if-eqz v0, :cond_2a

    .line 160
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->saveCategoryAndChannelPosition()V

    .line 161
    :cond_2a
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 162
    :cond_2b
    :goto_1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xb7
        :pswitch_10
        :pswitch_f
        :pswitch_12
        :pswitch_11
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 2
    :sswitch_0
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->releaseMediaPlayer()V

    .line 3
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->categoryModels:Ljava/util/List;

    iget v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "resume_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    if-eqz p1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->saveCategoryAndChannelPosition()V

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 6
    :sswitch_1
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->goToVodActivity()V

    goto/16 :goto_0

    .line 7
    :sswitch_2
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->showSubtitleTrack()V

    goto/16 :goto_0

    .line 8
    :sswitch_3
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->goToSeriesActivity()V

    goto/16 :goto_0

    .line 9
    :sswitch_4
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    sget-object p1, Lcom/nettv/livestore/apps/FocusStatus;->second:Lcom/nettv/livestore/apps/FocusStatus;

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->focusStatus:Lcom/nettv/livestore/apps/FocusStatus;

    .line 11
    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/LiveActivity;->showAndHideActionsButtons(Z)V

    .line 12
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->showSearchDlgFragment()V

    goto/16 :goto_0

    .line 13
    :sswitch_5
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    if-eqz p1, :cond_6

    .line 14
    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_id()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/nettv/livestore/activities/LiveActivity;->isAdultChannel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 15
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getChannel_locked_default()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 16
    :cond_1
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_locked()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 17
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    iget v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    const/4 v1, 0x4

    invoke-direct {p0, p1, v0, v1}, Lcom/nettv/livestore/activities/LiveActivity;->showChannelLockDlgFragment(Lcom/nettv/livestore/models/EPGChannel;II)V

    goto/16 :goto_0

    .line 18
    :cond_2
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-direct {p0, p1, v1}, Lcom/nettv/livestore/activities/LiveActivity;->controlLock(Lcom/nettv/livestore/models/EPGChannel;I)V

    .line 19
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_locked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveActivity;->showLockImageIcon(Z)V

    .line 20
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_locked()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 21
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getChannel_unlocked()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 22
    :cond_3
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getChannel_locked()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 23
    :sswitch_6
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    if-eqz p1, :cond_6

    .line 24
    iget v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-direct {p0, p1, v1}, Lcom/nettv/livestore/activities/LiveActivity;->controlFav(Lcom/nettv/livestore/models/EPGChannel;I)V

    .line 25
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_favorite()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveActivity;->showFavImageIcon(Z)V

    .line 26
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_favorite()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 27
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getChannel_removed_from_fav()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 28
    :cond_4
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getChannel_added_to_fav()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 29
    :sswitch_7
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->showAudioTrack()V

    goto :goto_0

    .line 30
    :sswitch_8
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->goToSearchActivity()V

    goto :goto_0

    .line 31
    :sswitch_9
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgChannels:Lio/realm/RealmResults;

    invoke-virtual {p1}, Lio/realm/RealmResults;->size()I

    move-result p1

    if-lez p1, :cond_6

    .line 32
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgChannels:Lio/realm/RealmResults;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->pre_channel_pos:I

    invoke-virtual {p1, v1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/EPGChannel;

    if-eqz p1, :cond_6

    .line 33
    iget v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->pre_channel_pos:I

    invoke-direct {p0, p1, v1}, Lcom/nettv/livestore/activities/LiveActivity;->controlFav(Lcom/nettv/livestore/models/EPGChannel;I)V

    .line 34
    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_favorite()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/nettv/livestore/activities/LiveActivity;->showFavImageIcon(Z)V

    .line 35
    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_favorite()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 36
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getChannel_removed_from_fav()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 37
    :cond_5
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getChannel_added_to_fav()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 38
    :sswitch_a
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->goToCatchupActivity()V

    :cond_6
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0b008a -> :sswitch_a
        0x7f0b008d -> :sswitch_9
        0x7f0b009f -> :sswitch_8
        0x7f0b01c4 -> :sswitch_7
        0x7f0b01d3 -> :sswitch_a
        0x7f0b01d6 -> :sswitch_6
        0x7f0b01dc -> :sswitch_5
        0x7f0b01e7 -> :sswitch_4
        0x7f0b01e8 -> :sswitch_3
        0x7f0b01ea -> :sswitch_2
        0x7f0b01f0 -> :sswitch_1
        0x7f0b03d9 -> :sswitch_0
        0x7f0b03e2 -> :sswitch_1
        0x7f0b03f7 -> :sswitch_3
    .end sparse-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e0023

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 3
    invoke-static {p0}, Lcom/nettv/livestore/utils/Utils;->FullScreenCall(Landroid/app/Activity;)V

    .line 4
    new-instance p1, Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-direct {p1, p0}, Lcom/nettv/livestore/helper/PreferenceHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    .line 5
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->getWordModel(Landroid/content/Context;)Lcom/nettv/livestore/models/WordModels;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 6
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->initView()V

    .line 7
    invoke-static {p0}, Lcom/nettv/livestore/utils/DemoUtil;->getDataSourceFactory(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 8
    new-instance p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

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

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->trackSelectionParameters:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "is_full"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->is_full:Z

    .line 12
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceInvisibleLiveCategories()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/nettv/livestore/apps/Constants;->getLiveGroupModels(Ljava/util/List;Landroid/content/Context;)V

    .line 13
    sget-object p1, Lcom/nettv/livestore/apps/LTVApp;->live_categories_filter:Ljava/util/List;

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->categoryModels:Ljava/util/List;

    .line 14
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceCategoryPos()I

    move-result p1

    iput p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

    .line 15
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->categoryModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    .line 16
    iput v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->categoryModels:Ljava/util/List;

    iget v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->categoryModels:Ljava/util/List;

    iget v4, p0, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/nettv/livestore/activities/LiveActivity;->isAdultChannel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 18
    iput v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

    .line 19
    :cond_1
    new-instance p1, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;

    iget-object v6, p0, Lcom/nettv/livestore/activities/LiveActivity;->categoryModels:Ljava/util/List;

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v7

    const/4 v8, 0x0

    iget v9, p0, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

    new-instance v10, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda3;

    invoke-direct {v10, p0, v3}, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ZZILkotlin/jvm/functions/Function3;)V

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->categoryAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;

    .line 20
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 21
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    iget v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    .line 22
    iget p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

    const/4 v0, 0x4

    const-string v4, ""

    if-le p1, v0, :cond_2

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupCategory()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-ge p1, v0, :cond_2

    .line 23
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupCategory()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 24
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupCategory()Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

    add-int/lit8 v0, v0, -0x5

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 25
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupChannels(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 26
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v0

    invoke-virtual {v0, p1, v4}, Lcom/nettv/livestore/helper/RealmController;->getEpgChannelsByNameArray(Ljava/util/List;Ljava/lang/String;)Lio/realm/RealmResults;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgChannels:Lio/realm/RealmResults;

    goto :goto_0

    .line 27
    :cond_2
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object p1

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->categoryModels:Ljava/util/List;

    iget v5, p0, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CategoryModel;

    iget-object v5, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v5}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v5

    iget-object v6, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v6}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceLiveOrder()I

    move-result v6

    invoke-virtual {p1, v0, v4, v5, v6}, Lcom/nettv/livestore/helper/RealmController;->getLiveChannelsByCategory(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmResults;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgChannels:Lio/realm/RealmResults;

    .line 28
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceChannelPos()I

    move-result p1

    iput p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    .line 29
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgChannels:Lio/realm/RealmResults;

    invoke-virtual {p1}, Lio/realm/RealmResults;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 30
    iget p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgChannels:Lio/realm/RealmResults;

    invoke-virtual {v0}, Lio/realm/RealmResults;->size()I

    move-result v0

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_5

    .line 31
    iput v3, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    goto :goto_1

    :cond_4
    const/4 p1, -0x1

    .line 32
    iput p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    .line 33
    :cond_5
    :goto_1
    new-instance p1, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgChannels:Lio/realm/RealmResults;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    new-instance v5, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0, v3}, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p1, p0, v0, v1, v5}, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILkotlin/jvm/functions/Function4;)V

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->channelAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;

    .line 34
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 35
    invoke-direct {p0, v3}, Lcom/nettv/livestore/activities/LiveActivity;->setFocusTopView(Z)V

    .line 36
    invoke-direct {p0, v3}, Lcom/nettv/livestore/activities/LiveActivity;->setFocusButtons(Z)V

    .line 37
    new-instance p1, Lcom/nettv/livestore/adapter/EpgRecyclerAdapter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/nettv/livestore/adapter/EpgRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgAdapter:Lcom/nettv/livestore/adapter/EpgRecyclerAdapter;

    .line 38
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_epg:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 39
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_epg:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgAdapter:Lcom/nettv/livestore/adapter/EpgRecyclerAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 40
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_epg:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 41
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgChannels:Lio/realm/RealmResults;

    invoke-virtual {p1}, Lio/realm/RealmResults;->size()I

    move-result p1

    const/4 v0, 0x0

    if-lez p1, :cond_9

    .line 42
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->setFull()V

    .line 43
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgChannels:Lio/realm/RealmResults;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-virtual {p1, v1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_id()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgChannels:Lio/realm/RealmResults;

    iget v4, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-virtual {v1, v4}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/nettv/livestore/activities/LiveActivity;->isAdultChannel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 44
    iput v3, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    .line 45
    :cond_6
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgChannels:Lio/realm/RealmResults;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-virtual {p1, v1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->is_locked()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 46
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgChannels:Lio/realm/RealmResults;

    iget v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-virtual {p1, v0}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/EPGChannel;

    iget v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-direct {p0, p1, v0, v2}, Lcom/nettv/livestore/activities/LiveActivity;->showChannelLockDlgFragment(Lcom/nettv/livestore/models/EPGChannel;II)V

    goto/16 :goto_4

    .line 47
    :cond_7
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgChannels:Lio/realm/RealmResults;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-virtual {p1, v1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/EPGChannel;

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveActivity;->playSelectedChannel(Lcom/nettv/livestore/models/EPGChannel;)V

    .line 48
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgChannels:Lio/realm/RealmResults;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-virtual {p1, v1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getStream_id()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->stream_id:Ljava/lang/String;

    .line 49
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result p1

    if-nez p1, :cond_8

    .line 50
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgTicker:Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 51
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->stream_id:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveActivity;->epgTimer(Ljava/lang/String;)V

    goto :goto_2

    .line 52
    :cond_8
    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/LiveActivity;->showEpgInfo(Ljava/util/List;)V

    .line 53
    :goto_2
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_name:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveActivity;->changeChannelInfo(I)V

    .line 55
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 56
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    iget v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    .line 57
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    iget v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/BaseGridView;->scrollToPosition(I)V

    goto/16 :goto_4

    :cond_9
    const/4 p1, 0x2

    .line 58
    iput p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

    .line 59
    iput v3, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    .line 60
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->setFull()V

    .line 61
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object p1

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->categoryModels:Ljava/util/List;

    iget v2, p0, Lcom/nettv/livestore/activities/LiveActivity;->category_pos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/CategoryModel;

    iget-object v2, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v2

    iget-object v5, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v5}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceLiveOrder()I

    move-result v5

    invoke-virtual {p1, v1, v4, v2, v5}, Lcom/nettv/livestore/helper/RealmController;->getLiveChannelsByCategory(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmResults;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgChannels:Lio/realm/RealmResults;

    .line 62
    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->channelAdapter:Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;

    invoke-virtual {v1, p1, v3}, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;->updateData(Ljava/util/List;I)V

    .line 63
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgChannels:Lio/realm/RealmResults;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-virtual {p1, v1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_id()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgChannels:Lio/realm/RealmResults;

    iget v2, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-virtual {v1, v2}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/EPGChannel;->getCategory_name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/nettv/livestore/activities/LiveActivity;->isAdultChannel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 64
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_category:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_4

    .line 65
    :cond_a
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgChannels:Lio/realm/RealmResults;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-virtual {p1, v1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/EPGChannel;

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveActivity;->playSelectedChannel(Lcom/nettv/livestore/models/EPGChannel;)V

    .line 66
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgChannels:Lio/realm/RealmResults;

    iget v1, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-virtual {p1, v1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getStream_id()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->stream_id:Ljava/lang/String;

    .line 67
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result p1

    if-nez p1, :cond_b

    .line 68
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->epgTicker:Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 69
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->stream_id:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveActivity;->epgTimer(Ljava/lang/String;)V

    goto :goto_3

    .line 70
    :cond_b
    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/LiveActivity;->showEpgInfo(Ljava/util/List;)V

    .line 71
    :goto_3
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->txt_name:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveActivity;->changeChannelInfo(I)V

    .line 73
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 74
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    iget v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    .line 75
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->recycler_channel:Lcom/nettv/livestore/view/LiveVerticalGridView;

    iget v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->channel_pos:I

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/BaseGridView;->scrollToPosition(I)V

    :goto_4
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/nettv/livestore/activities/LiveActivity;->hideInfoTicker:Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda2;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->mInfoHideTimer()V

    :cond_0
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
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->onPause()V

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->releaseMediaPlayer()V

    :cond_1
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
    iget-object v0, p0, Lcom/nettv/livestore/activities/LiveActivity;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->onPause()V

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/nettv/livestore/activities/LiveActivity;->releaseMediaPlayer()V

    :cond_1
    return-void
.end method
