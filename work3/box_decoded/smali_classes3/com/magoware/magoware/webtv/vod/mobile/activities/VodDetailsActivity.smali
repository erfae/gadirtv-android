.class public Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "VodDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$State;
    }
.end annotation


# static fields
.field public static final COME_FROM:Ljava/lang/String; = "intent_origin"

.field public static final MOVIE_ID:Ljava/lang/String; = "vod_id"

.field private static final TAG:Ljava/lang/String; = "VodDetailsActivity"

.field public static final TV_SHOW_ID:Ljava/lang/String; = "tv_show_id"

.field public static final VOD_POSITION:Ljava/lang/String; = "vod_position"


# instance fields
.field aboutMovie:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b0015
    .end annotation
.end field

.field private bundleData:Landroid/os/Bundle;

.field cast_member_recycler:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b013a
    .end annotation
.end field

.field private daysLeft:I

.field private episodesTvShowFragment:Lcom/magoware/magoware/webtv/vod/mobile/fragments/EpisodesTvShowFragment;

.field private hasTrailer:Z

.field private final isBought:Z

.field private isPausedVideo:Z

.field private isVodMovie:Z

.field private magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

.field movieCast:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b0410
    .end annotation
.end field

.field movieDirector:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b0415
    .end annotation
.end field

.field private movieFavorite:Landroid/widget/TextView;

.field movieProgressBar:Lcom/google/android/material/progressindicator/CircularProgressIndicator;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b0417
    .end annotation
.end field

.field movieProgressLabel:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b0418
    .end annotation
.end field

.field movieRate:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b0419
    .end annotation
.end field

.field movieReleaseDate:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b041a
    .end annotation
.end field

.field movieThumbDown:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b041b
    .end annotation
.end field

.field movieThumbUp:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b041c
    .end annotation
.end field

.field movieTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b041d
    .end annotation
.end field

.field poster:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b050a
    .end annotation
.end field

.field relatedVodText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b0530
    .end annotation
.end field

.field private shouldUpdateVodData:Z

.field startWatchingMovie:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b05f9
    .end annotation
.end field

.field private state:Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$State;

.field toolbarVodDetails:Landroidx/appcompat/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b066f
    .end annotation
.end field

.field trailerButton:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b067e
    .end annotation
.end field

.field private vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

.field private vodResumePosition:I

.field vod_related_recycler:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b06e7
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 72
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->isBought:Z

    .line 116
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->hasTrailer:Z

    const/4 v1, 0x1

    .line 117
    iput-boolean v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->isVodMovie:Z

    .line 118
    iput-boolean v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->shouldUpdateVodData:Z

    const/4 v1, -0x1

    .line 120
    iput v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->vodResumePosition:I

    const v1, 0x4c4b40

    .line 121
    iput v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->daysLeft:I

    .line 124
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->isPausedVideo:Z

    return-void
.end method

.method private buyMovie()Landroid/app/AlertDialog;
    .locals 4

    .line 648
    new-instance v0, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;-><init>(Landroid/content/Context;)V

    const v1, 0x7f140416

    .line 649
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f140492

    .line 650
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$VodDetailsActivity$uOnZgEHSuxSOp_j7piUMUbIdAH8;

    invoke-direct {v2, p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$VodDetailsActivity$uOnZgEHSuxSOp_j7piUMUbIdAH8;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;)V

    const v3, 0x7f140081

    .line 651
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$VodDetailsActivity$RgiC6b_VKjD47al2HAhL1ofOHEQ;->INSTANCE:Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$VodDetailsActivity$RgiC6b_VKjD47al2HAhL1ofOHEQ;

    const v3, 0x7f140083

    .line 656
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 660
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private getEpisodeDetail(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "episodeID"
        }
    .end annotation

    .line 344
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getVodTvShowEpisodeDetail(I)Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$VodDetailsActivity$o_v7qXXeLzL_OCYakbS7ZcZStSU;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$VodDetailsActivity$o_v7qXXeLzL_OCYakbS7ZcZStSU;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private getIntentData(Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    const-string v0, "vod_id"

    .line 235
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "vod_position"

    if-eqz v1, :cond_2

    .line 236
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;-><init>()V

    iput-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    const/4 v4, 0x1

    .line 237
    iput-boolean v4, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->isVodMovie:Z

    .line 238
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setId(I)V

    .line 239
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    sget-object v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->FILM:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setVodType(Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;)V

    .line 240
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->vodResumePosition:I

    :cond_0
    const-string v0, "intent_origin"

    .line 243
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 244
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ContinuePausedMovie"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    iput-boolean v2, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->isPausedVideo:Z

    .line 245
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->getMovieDetails(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_2
    const-string v0, "tv_show_id"

    .line 246
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 247
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;-><init>()V

    iput-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 248
    iput-boolean v2, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->isVodMovie:Z

    .line 249
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setId(I)V

    .line 250
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->TV_SERIES:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setVodType(Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;)V

    .line 251
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->getTvShowDetail()V

    goto :goto_0

    :cond_3
    const-string v0, "vod_card"

    .line 253
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 254
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->vodResumePosition:I

    .line 255
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->initVodView()V

    :goto_0
    return-void
.end method

.method private getMovieDetails(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isMoviedPaused"
        }
    .end annotation

    .line 275
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getVodDetailsObservable(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$VodDetailsActivity$ODxbHZQl-y2hgetBKM5OKYTZJDc;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$VodDetailsActivity$ODxbHZQl-y2hgetBKM5OKYTZJDc;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private getSettings()V
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getSettingsObservable()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$VodDetailsActivity$3jzYYraGTNV7RElhIjmd5FdpjQ0;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$VodDetailsActivity$3jzYYraGTNV7RElhIjmd5FdpjQ0;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private getTvShowDetail()V
    .locals 2

    .line 316
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getVodTvShowDetailsObservable(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$VodDetailsActivity$UvqKeY3p1TslZl1DIfRgWSr0HU0;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$VodDetailsActivity$UvqKeY3p1TslZl1DIfRgWSr0HU0;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private getTvShowFirstEpisode(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tvShowId",
            "seasonId"
        }
    .end annotation

    .line 375
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v0, p1, p2}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getVodTvShowEpisodesObservable(II)Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance p2, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$VodDetailsActivity$cipsu0Qfke7_ln3W5fKxSxTXYQs;

    invoke-direct {p2, p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$VodDetailsActivity$cipsu0Qfke7_ln3W5fKxSxTXYQs;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;)V

    invoke-virtual {p1, p0, p2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private initVodView()V
    .locals 3

    .line 260
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodTypeEnum()Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->FILM:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 261
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->getMovieDetails(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodTypeEnum()Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    move-result-object v0

    sget-object v2, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->TV_SERIES:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    invoke-virtual {v0, v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    iput-boolean v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->isVodMovie:Z

    .line 264
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->getTvShowDetail()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$buyMovie$16(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private playVideo(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vodCard"
        }
    .end annotation

    .line 402
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodStream()Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodStream()Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 403
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodStream()Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->getStreamTypeEnum()Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream$StreamType;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream$StreamType;->VR:Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream$StreamType;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 404
    :goto_0
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodStream()Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->getStreamTypeEnum()Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream$StreamType;

    move-result-object v1

    sget-object v4, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream$StreamType;->VIDEO360:Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream$StreamType;

    if-ne v1, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 408
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/magoware/magoware/webtv/vr/VRTest;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 409
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 411
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v3, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz v2, :cond_3

    const-string v1, "spherical_stereo_mode"

    const-string v2, "top_bottom"

    .line 414
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    :cond_3
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 417
    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "movieJson"

    .line 418
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    iget p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->vodResumePosition:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_4

    const-string v1, "vod_position"

    .line 420
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 421
    :cond_4
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_5
    const p1, 0x7f140414

    .line 424
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    const-string v0, "VOD"

    const-string v1, "2132018196"

    const-string v2, "testUrlNewVodMobile"

    const-string v3, "exoplayer"

    const-string v4, "-1"

    const-string v5, "-1"

    .line 427
    invoke-static/range {v0 .. v5}, Lcom/magoware/magoware/webtv/network/SendAnalyticsLogs;->logVodErrors(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private setMovieFavorite(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vodCard"
        }
    .end annotation

    .line 577
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getMovieReaction()Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;->getFavorite()I

    move-result v0

    if-nez v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieFavorite:Landroid/widget/TextView;

    const v1, 0x7f14005d

    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 579
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieFavorite:Landroid/widget/TextView;

    const v1, 0x7f06006b

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieFavorite:Landroid/widget/TextView;

    const v1, 0x7f14036c

    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieFavorite:Landroid/widget/TextView;

    const v1, 0x7f060092

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 584
    :goto_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieFavorite:Landroid/widget/TextView;

    new-instance v1, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$VodDetailsActivity$RbPIgas4uWTXwQ4I5mGHcFyBFLY;

    invoke-direct {v1, p0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$VodDetailsActivity$RbPIgas4uWTXwQ4I5mGHcFyBFLY;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setReaction(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reaction"
        }
    .end annotation

    .line 459
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getId()I

    move-result v1

    iget-boolean v2, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->isVodMovie:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->sendThumbReaction(IIZ)Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$VodDetailsActivity$vidqlKkV1GMupiJZC9EeDmrdiZk;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$VodDetailsActivity$vidqlKkV1GMupiJZC9EeDmrdiZk;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private setState(Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$State;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 664
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->state:Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$State;

    return-void
.end method

.method private setTokenUrl(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vodCard",
            "isMoviedPaused"
        }
    .end annotation

    .line 385
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodStream()Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->getTokenUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getStreamToken(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$VodDetailsActivity$-rIniy7Rh2WsmKAL70hw504GkxI;

    invoke-direct {v1, p0, p1, p2}, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$VodDetailsActivity$-rIniy7Rh2WsmKAL70hw504GkxI;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;Lcom/magoware/magoware/webtv/network/mvvm/models/Card;Ljava/lang/Boolean;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private setTvShowsFavorite(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vodCard"
        }
    .end annotation

    .line 557
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTvSeriesResume()Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;->getFavorite()I

    move-result v0

    if-nez v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieFavorite:Landroid/widget/TextView;

    const v1, 0x7f14005d

    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieFavorite:Landroid/widget/TextView;

    const v1, 0x7f06006b

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieFavorite:Landroid/widget/TextView;

    const v1, 0x7f14036c

    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 562
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieFavorite:Landroid/widget/TextView;

    const v1, 0x7f060092

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 564
    :goto_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieFavorite:Landroid/widget/TextView;

    new-instance v1, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$VodDetailsActivity$r0p3dj8GUCflCf7bhtV4XeeSbtY;

    invoke-direct {v1, p0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$VodDetailsActivity$r0p3dj8GUCflCf7bhtV4XeeSbtY;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showCastMembers(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vodCard"
        }
    .end annotation

    .line 598
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTmdbValues()Lcom/google/gson/JsonObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTmdbValues()Lcom/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "tmdbId"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getCastMembers(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$VodDetailsActivity$iYXECdkyFRf1zCmFDF0h_kpdUpg;

    invoke-direct {v1, p0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$VodDetailsActivity$iYXECdkyFRf1zCmFDF0h_kpdUpg;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method

.method private showFavoriteLabel(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "favorite"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 639
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieFavorite:Landroid/widget/TextView;

    const v0, 0x7f14005d

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 640
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieFavorite:Landroid/widget/TextView;

    const v0, 0x7f06006b

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 642
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieFavorite:Landroid/widget/TextView;

    const v0, 0x7f14036c

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 643
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieFavorite:Landroid/widget/TextView;

    const v0, 0x7f060092

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method private showRelatedMovies()V
    .locals 4

    .line 610
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    if-eqz v0, :cond_0

    .line 611
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getId()I

    move-result v0

    const/4 v2, 0x1

    const/16 v3, 0x1e

    invoke-virtual {v1, v0, v2, v3}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getRelatedMoviesObservable(III)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$VodDetailsActivity$MLwdePFlfCHGfyjIr2jCFt1XVyc;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$VodDetailsActivity$MLwdePFlfCHGfyjIr2jCFt1XVyc;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method

.method private showRelatedTvShows()V
    .locals 4

    .line 625
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getId()I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getRelatedTvShowObservable(III)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$VodDetailsActivity$sg7rmqAVUI1SK_vkbwCtsLmmGQk;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$VodDetailsActivity$sg7rmqAVUI1SK_vkbwCtsLmmGQk;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private showVodActions()V
    .locals 6

    .line 432
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/network/mvvm/models/ActionButton;

    .line 433
    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/ActionButton;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "thumbdown"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x5

    goto :goto_1

    :sswitch_1
    const-string v3, "play"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x4

    goto :goto_1

    :sswitch_2
    const-string v3, "buy"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x3

    goto :goto_1

    :sswitch_3
    const-string v3, "trailer"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_4
    const-string v3, "thumbup"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x1

    goto :goto_1

    :sswitch_5
    const-string v3, "coming_soon"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 439
    :pswitch_0
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieThumbDown:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 440
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->showVodReaction()V

    goto :goto_0

    .line 443
    :pswitch_1
    sget-object v1, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$State;->Play:Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$State;

    invoke-direct {p0, v1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->setState(Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$State;)V

    goto :goto_0

    .line 446
    :pswitch_2
    sget-object v1, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$State;->Buy:Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$State;

    invoke-direct {p0, v1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->setState(Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$State;)V

    goto :goto_0

    .line 452
    :pswitch_3
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTrailerUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    xor-int/2addr v1, v4

    iput-boolean v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->hasTrailer:Z

    goto/16 :goto_0

    .line 435
    :pswitch_4
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieThumbUp:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 436
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->showVodReaction()V

    goto/16 :goto_0

    .line 449
    :pswitch_5
    sget-object v1, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$State;->ComingSoon:Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$State;

    invoke-direct {p0, v1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->setState(Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$State;)V

    goto/16 :goto_0

    :cond_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5316dc07 -> :sswitch_5
        -0x4f915d0f -> :sswitch_4
        -0x3f9c6acd -> :sswitch_3
        0x17e86 -> :sswitch_2
        0x348b34 -> :sswitch_1
        0x4f49fb78 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showVodGenres()V
    .locals 7

    .line 463
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getGenreIds()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getGenreIds()Ljava/util/List;

    move-result-object v0

    const v1, 0x7f0b041f

    .line 465
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 466
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x10

    .line 467
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 468
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/4 v3, 0x0

    .line 469
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 470
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0e01bc

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 471
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 472
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/magoware/magoware/webtv/network/mvvm/models/Genre;

    invoke-virtual {v5}, Lcom/magoware/magoware/webtv/network/mvvm/models/Genre;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private showVodOverview(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vodCard"
        }
    .end annotation

    .line 507
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTvShowSeasons()Ljava/util/ArrayList;

    move-result-object v0

    .line 509
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->trailerButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 510
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->startWatchingMovie:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 511
    iget-boolean v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->hasTrailer:Z

    if-eqz v1, :cond_0

    .line 512
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->trailerButton:Landroid/widget/Button;

    new-instance v3, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$VodDetailsActivity$hX38uyEtabCuZhODStuJb3dhpsE;

    invoke-direct {v3, p0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$VodDetailsActivity$hX38uyEtabCuZhODStuJb3dhpsE;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 516
    :cond_0
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->trailerButton:Landroid/widget/Button;

    const v3, 0x3ecccccd    # 0.4f

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setAlpha(F)V

    .line 518
    :goto_0
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->startWatchingMovie:Landroid/widget/Button;

    new-instance v3, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$VodDetailsActivity$O1Ap3mrgUgwL_HTQxxojHa1hJmE;

    invoke-direct {v3, p0, v0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$VodDetailsActivity$O1Ap3mrgUgwL_HTQxxojHa1hJmE;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0416

    .line 527
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieFavorite:Landroid/widget/TextView;

    .line 528
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 529
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getOverview()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 531
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->aboutMovie:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getOverview()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieDirector:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 534
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieDirector:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f140288

    invoke-virtual {p0, v3}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getDirector()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 535
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieRate:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 536
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieRate:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f14035d

    invoke-virtual {p0, v3}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVoteAverage()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/5"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getReleaseDate()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 539
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieReleaseDate:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 540
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieReleaseDate:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f140365

    invoke-virtual {p0, v3}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getReleaseDate()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 542
    :cond_2
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieReleaseDate:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 545
    :goto_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->relatedVodText:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->isVodMovie:Z

    if-eqz v1, :cond_3

    const v1, 0x7f140363

    goto :goto_2

    :cond_3
    const v1, 0x7f140364

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 546
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->isVodMovie:Z

    if-eqz v0, :cond_4

    .line 547
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->setMovieFavorite(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V

    goto :goto_3

    .line 549
    :cond_4
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->setTvShowsFavorite(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V

    .line 551
    :goto_3
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieCast:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 552
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieCast:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f140287

    invoke-virtual {p0, v2}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getCast()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 553
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->showCastMembers(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V

    return-void
.end method

.method private showVodReaction()V
    .locals 7

    .line 479
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->isVodMovie:Z

    const v1, 0x7f080086

    const v2, 0x7f080087

    const/4 v3, -0x1

    const/4 v4, 0x1

    const v5, 0x7f080338

    const v6, 0x7f080337

    if-eqz v0, :cond_2

    .line 480
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getMovieReaction()Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;->getReaction()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 481
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieThumbUp:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 482
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieThumbDown:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getMovieReaction()Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;->getReaction()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 484
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieThumbDown:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 485
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieThumbUp:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 487
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieThumbUp:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 488
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieThumbDown:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 491
    :cond_2
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTvSeriesResume()Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;->getReaction()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 492
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieThumbUp:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 493
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieThumbDown:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 494
    :cond_3
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTvSeriesResume()Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;->getReaction()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 495
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieThumbDown:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 496
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieThumbUp:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 498
    :cond_4
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieThumbUp:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 499
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieThumbDown:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private streamState()V
    .locals 2

    .line 668
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->poster:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 669
    sget-object v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$1;->$SwitchMap$com$magoware$magoware$webtv$vod$mobile$activities$VodDetailsActivity$State:[I

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->state:Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$State;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Coming Soon"

    .line 677
    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 674
    :cond_1
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->buyMovie()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 671
    :cond_2
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->playVideo(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateVodPercentage(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vodCard"
        }
    .end annotation

    .line 307
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getMovieReaction()Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;->getPercentagePosition()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_0

    const v0, 0x7f0b0515

    .line 309
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieProgressBar:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getMovieReaction()Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;->getPercentagePosition()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->setProgressCompat(IZ)V

    .line 311
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieProgressLabel:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getMovieReaction()Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;

    move-result-object p1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;->getPercentagePosition()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    const-string p1, "%d%%"

    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "base"
        }
    .end annotation

    .line 128
    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/LocaleHelper;->onAttach(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public synthetic lambda$buyMovie$15$VodDetailsActivity(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 652
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/magoware/magoware/webtv/vod/mobile/activities/BuyMovieWebView;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 653
    iget-object p2, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getPaymentUrl()Ljava/lang/String;

    move-result-object p2

    const-string v0, "payment_url"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x1

    .line 654
    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public synthetic lambda$getEpisodeDetail$3$VodDetailsActivity(Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 345
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;->getVodItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;->getVodItems()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 351
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->playVideo(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$getMovieDetails$1$VodDetailsActivity(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 277
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 278
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 280
    iget-boolean v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->shouldUpdateVodData:Z

    if-eqz v1, :cond_0

    .line 281
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->toolbarVodDetails:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 282
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->poster:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getPosterPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/magoware/magoware/webtv/util/GlideUtilKt;->setImageFromUrl(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 283
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->showVodGenres()V

    .line 284
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->showVodActions()V

    .line 285
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->showVodOverview(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V

    .line 286
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->showRelatedMovies()V

    .line 287
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->shouldUpdateVodData:Z

    .line 289
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->updateVodPercentage(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V

    .line 291
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getMovieReaction()Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;

    move-result-object p1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;->getResumePosition()I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->vodResumePosition:I

    .line 292
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->poster:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 293
    iget p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->vodResumePosition:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    .line 294
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getMovieReaction()Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;

    move-result-object p1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;->getPercentagePosition()I

    move-result p1

    if-lez p1, :cond_1

    .line 295
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->startWatchingMovie:Landroid/widget/Button;

    const v0, 0x7f140104

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 297
    :cond_1
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->startWatchingMovie:Landroid/widget/Button;

    const v0, 0x7f1403d1

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 301
    :cond_2
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public synthetic lambda$getSettings$4$VodDetailsActivity(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 358
    iget v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    iget-object v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 359
    iget-object v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;

    iget v0, v0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->daysleft:I

    iput v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->daysLeft:I

    .line 360
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->SUBSCRIPTION_ENDED_MESSAGE:Ljava/lang/String;

    iget-object v3, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->days_left_message:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    :cond_0
    iget p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v0, 0x378

    if-ne p1, v0, :cond_1

    .line 363
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->finish()V

    goto :goto_0

    .line 364
    :cond_1
    iget p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->daysLeft:I

    if-gtz p1, :cond_2

    const p1, 0x7f14041d

    .line 365
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->finish()V

    goto :goto_0

    .line 368
    :cond_2
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->bundleData:Landroid/os/Bundle;

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->getIntentData(Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$getTvShowDetail$2$VodDetailsActivity(Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 318
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;->getVodItems()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;->getVodItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 319
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;->getVodItems()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 321
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->episodesTvShowFragment:Lcom/magoware/magoware/webtv/vod/mobile/fragments/EpisodesTvShowFragment;

    if-nez p1, :cond_0

    .line 322
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 323
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/vod/mobile/fragments/EpisodesTvShowFragment;->newInstance(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)Lcom/magoware/magoware/webtv/vod/mobile/fragments/EpisodesTvShowFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->episodesTvShowFragment:Lcom/magoware/magoware/webtv/vod/mobile/fragments/EpisodesTvShowFragment;

    const v2, 0x7f0b06e9

    .line 324
    invoke-virtual {p1, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 325
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 328
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->toolbarVodDetails:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 329
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->poster:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getPosterPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/magoware/magoware/webtv/util/GlideUtilKt;->setImageFromUrl(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 330
    iget-boolean p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->shouldUpdateVodData:Z

    if-eqz p1, :cond_1

    .line 331
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->showVodGenres()V

    .line 332
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->showRelatedTvShows()V

    .line 333
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->shouldUpdateVodData:Z

    .line 335
    :cond_1
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->showVodActions()V

    .line 336
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->showVodOverview(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V

    goto :goto_0

    .line 338
    :cond_2
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public synthetic lambda$getTvShowFirstEpisode$5$VodDetailsActivity(Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;)V
    .locals 1

    .line 376
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->response_object:Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->response_object:Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;->getMoviesList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    iget-object p1, p1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->response_object:Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;->getMoviesList()Ljava/util/ArrayList;

    move-result-object p1

    .line 378
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 379
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->getEpisodeDetail(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onCreate$0$VodDetailsActivity(Landroid/view/View;)V
    .locals 0

    .line 139
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->onBackPressed()V

    return-void
.end method

.method public synthetic lambda$setMovieFavorite$11$VodDetailsActivity(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;Landroid/view/View;)V
    .locals 1

    .line 585
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getMovieReaction()Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;

    move-result-object p2

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;->getFavorite()I

    move-result p2

    if-nez p2, :cond_0

    .line 586
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getMovieReaction()Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;->setFavorite(I)V

    .line 587
    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->showFavoriteLabel(I)V

    goto :goto_0

    .line 589
    :cond_0
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getMovieReaction()Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;->setFavorite(I)V

    .line 590
    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->showFavoriteLabel(I)V

    .line 592
    :goto_0
    iget-object p2, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getId()I

    move-result v0

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getMovieReaction()Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;

    move-result-object p1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;->getFavorite()I

    move-result p1

    invoke-virtual {p2, v0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->setVodFavorite(II)Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public synthetic lambda$setReaction$7$VodDetailsActivity(Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;)V
    .locals 0

    .line 459
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->showVodReaction()V

    return-void
.end method

.method public synthetic lambda$setTokenUrl$6$VodDetailsActivity(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;Ljava/lang/Boolean;Lcom/magoware/magoware/webtv/network/mvvm/models/VodStreamResponse;)V
    .locals 2

    if-eqz p3, :cond_1

    .line 387
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodStream()Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;

    move-result-object v0

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodStream()Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStreamResponse;->getExtraData()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->setUrl(Ljava/lang/String;)V

    .line 388
    iget-boolean p3, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->isVodMovie:Z

    if-eqz p3, :cond_0

    .line 389
    iget-object p3, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->poster:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 390
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 391
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->playVideo(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V

    goto :goto_0

    .line 394
    :cond_0
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->playVideo(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$setTvShowsFavorite$10$VodDetailsActivity(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;Landroid/view/View;)V
    .locals 1

    .line 565
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTvSeriesResume()Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;

    move-result-object p2

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;->getFavorite()I

    move-result p2

    if-nez p2, :cond_0

    .line 566
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTvSeriesResume()Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;->setFavorite(I)V

    .line 567
    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->showFavoriteLabel(I)V

    goto :goto_0

    .line 569
    :cond_0
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTvSeriesResume()Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;->setFavorite(I)V

    .line 570
    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->showFavoriteLabel(I)V

    .line 572
    :goto_0
    iget-object p2, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getId()I

    move-result v0

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTvSeriesResume()Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;

    move-result-object p1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;->getFavorite()I

    move-result p1

    invoke-virtual {p2, v0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->setTvShowFavorite(II)Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public synthetic lambda$showCastMembers$12$VodDetailsActivity(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;Ljava/util/List;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 600
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 601
    new-instance v0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/CastAdapter;

    invoke-direct {v0, p2}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/CastAdapter;-><init>(Ljava/util/List;)V

    .line 602
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/CastAdapter;->setMovieTitle(Ljava/lang/String;)V

    .line 603
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->cast_member_recycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$showRelatedMovies$13$VodDetailsActivity(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 613
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 615
    new-instance v0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SimilarMoviesAdapter;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SimilarMoviesAdapter;-><init>(Ljava/util/List;)V

    .line 616
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->vod_related_recycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 618
    :cond_0
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$showRelatedTvShows$14$VodDetailsActivity(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 627
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 629
    new-instance v0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SimilarMoviesAdapter;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SimilarMoviesAdapter;-><init>(Ljava/util/List;)V

    .line 630
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->vod_related_recycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 632
    :cond_0
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$showVodOverview$8$VodDetailsActivity(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;Landroid/view/View;)V
    .locals 1

    .line 513
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/MovieTrailerActivity;

    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 514
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTrailerUrl()Ljava/lang/String;

    move-result-object p1

    const-string v0, "movieTrailer"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 513
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$showVodOverview$9$VodDetailsActivity(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 1

    .line 519
    iget-boolean p2, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->isVodMovie:Z

    if-eqz p2, :cond_0

    .line 520
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->streamState()V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 522
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/network/mvvm/models/TvShowSeasons;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/TvShowSeasons;->getId()I

    move-result v0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/TvShowSeasons;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/TvShowSeasons;->getSeasonNumber()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->getTvShowFirstEpisode(II)V

    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    .line 192
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    .line 197
    iget-boolean p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->isVodMovie:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->getMovieDetails(Ljava/lang/Boolean;)V

    goto :goto_1

    .line 198
    :cond_0
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->getTvShowDetail()V

    goto :goto_1

    :cond_1
    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 201
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/Fragment;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0b041b,
            0x7f0b041c
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 169
    :pswitch_0
    iget-boolean p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->isVodMovie:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 170
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getMovieReaction()Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;

    move-result-object p1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;->getReaction()I

    move-result p1

    if-ne p1, v1, :cond_0

    .line 171
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getMovieReaction()Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;->setReaction(I)V

    .line 172
    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->setReaction(I)V

    goto/16 :goto_0

    .line 174
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getMovieReaction()Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;->setReaction(I)V

    .line 175
    invoke-direct {p0, v1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->setReaction(I)V

    goto/16 :goto_0

    .line 178
    :cond_1
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTvSeriesResume()Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;

    move-result-object p1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;->getReaction()I

    move-result p1

    if-ne p1, v1, :cond_2

    .line 179
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTvSeriesResume()Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;->setReaction(I)V

    .line 180
    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->setReaction(I)V

    goto :goto_0

    .line 182
    :cond_2
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTvSeriesResume()Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;->setReaction(I)V

    .line 183
    invoke-direct {p0, v1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->setReaction(I)V

    goto :goto_0

    .line 150
    :pswitch_1
    iget-boolean p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->isVodMovie:Z

    const/4 v1, -0x1

    if-eqz p1, :cond_4

    .line 151
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getMovieReaction()Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;

    move-result-object p1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;->getReaction()I

    move-result p1

    if-ne p1, v1, :cond_3

    .line 152
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getMovieReaction()Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;->setReaction(I)V

    .line 153
    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->setReaction(I)V

    goto :goto_0

    .line 155
    :cond_3
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getMovieReaction()Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;->setReaction(I)V

    .line 156
    invoke-direct {p0, v1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->setReaction(I)V

    goto :goto_0

    .line 159
    :cond_4
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTvSeriesResume()Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;

    move-result-object p1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;->getReaction()I

    move-result p1

    if-ne p1, v1, :cond_5

    .line 160
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTvSeriesResume()Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;->setReaction(I)V

    .line 161
    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->setReaction(I)V

    goto :goto_0

    .line 163
    :cond_5
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTvSeriesResume()Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;->setReaction(I)V

    .line 164
    invoke-direct {p0, v1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->setReaction(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0b041b
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 133
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e0043

    .line 134
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->setContentView(I)V

    .line 135
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 137
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 138
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    .line 139
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->toolbarVodDetails:Landroidx/appcompat/widget/Toolbar;

    new-instance v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$VodDetailsActivity$UX89Q2iUxk_kwdXwU2ljhIsG7mc;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$VodDetailsActivity$UX89Q2iUxk_kwdXwU2ljhIsG7mc;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->bundleData:Landroid/os/Bundle;

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "permissions",
            "grantResults"
        }
    .end annotation

    .line 223
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 225
    invoke-static {p1, p2, p3}, Lcom/magoware/magoware/webtv/visualon/PlayerPermissions;->onRequestPermissionsResult(I[Ljava/lang/String;[I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Closing the application as it will not work properly without write permissions"

    .line 229
    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 211
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 212
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->getSettings()V

    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 1

    .line 217
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->onBackPressed()V

    const/4 v0, 0x1

    return v0
.end method
