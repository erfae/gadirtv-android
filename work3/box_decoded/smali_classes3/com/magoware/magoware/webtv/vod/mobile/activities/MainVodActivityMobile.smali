.class public Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainVodActivityMobile.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# instance fields
.field private daysLeft:I

.field fabClose:Landroid/view/animation/Animation;

.field fabMovieSearch:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b0570
    .end annotation
.end field

.field fabOpen:Landroid/view/animation/Animation;

.field fabSearch:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b056f
    .end annotation
.end field

.field fabTvShowSearch:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b0572
    .end annotation
.end field

.field isOpen:Z

.field mViewPager:Landroidx/viewpager/widget/ViewPager;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b019d
    .end annotation
.end field

.field private magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

.field mainTabs:Lcom/google/android/material/tabs/TabLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b03c5
    .end annotation
.end field

.field searchMovieTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b0571
    .end annotation
.end field

.field searchTvShowTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b0573
    .end annotation
.end field

.field private tabUnSelectedPosition:I

.field toolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b066e
    .end annotation
.end field

.field vodItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const v0, 0x4c4b40

    .line 67
    iput v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->daysLeft:I

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->isOpen:Z

    .line 71
    iput v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->tabUnSelectedPosition:I

    return-void
.end method

.method private fabClose()V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->fabSearch:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const v1, 0x7f08007b

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageResource(I)V

    .line 203
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->fabMovieSearch:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->fabClose:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 204
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->fabTvShowSearch:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->fabOpen:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 205
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->hideMovieFab()V

    .line 206
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->hideTvShowFab()V

    :cond_0
    const/4 v0, 0x0

    .line 208
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->isOpen:Z

    return-void
.end method

.method private fabOpen()V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->fabSearch:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const v1, 0x7f0801a3

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageResource(I)V

    .line 193
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->fabMovieSearch:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->fabOpen:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 194
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->fabTvShowSearch:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->fabOpen:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 195
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->showMovieFab()V

    .line 196
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->showTvShowsFab()V

    :cond_0
    const/4 v0, 0x1

    .line 198
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->isOpen:Z

    return-void
.end method

.method private getMainVodView()V
    .locals 2

    const v0, 0x7f0e0141

    .line 93
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->setContentView(I)V

    .line 94
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 96
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    const v0, 0x7f14006f

    .line 97
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f01001d

    .line 99
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->fabOpen:Landroid/view/animation/Animation;

    const v0, 0x7f01001c

    .line 100
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->fabClose:Landroid/view/animation/Animation;

    .line 102
    invoke-static {}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->get()Lcom/magoware/magoware/webtv/util/CustomConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->isVodScreenOrientationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 103
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->setRequestedOrientation(I)V

    .line 106
    :cond_0
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    .line 107
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getVodMenuObservable()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$MainVodActivityMobile$wKBWkMcZiOYd04-aoGYyCa8-gzA;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$MainVodActivityMobile$wKBWkMcZiOYd04-aoGYyCa8-gzA;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 133
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->fabSearch:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance v1, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$MainVodActivityMobile$217GAD9OmO72VAqKnl5kXebVaP0;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$MainVodActivityMobile$217GAD9OmO72VAqKnl5kXebVaP0;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->fabMovieSearch:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance v1, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$MainVodActivityMobile$rtMaeNBRvFVGA6nrERL1ntgumh8;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$MainVodActivityMobile$rtMaeNBRvFVGA6nrERL1ntgumh8;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->fabTvShowSearch:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance v1, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$MainVodActivityMobile$ipROO46GdtwBbUZhUesxjNR2L9g;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$MainVodActivityMobile$ipROO46GdtwBbUZhUesxjNR2L9g;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->searchMovieTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$MainVodActivityMobile$CvUl4k9ZER7DrZdNQuTccm2XoFY;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$MainVodActivityMobile$CvUl4k9ZER7DrZdNQuTccm2XoFY;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->searchTvShowTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$MainVodActivityMobile$iINEgSYVMFENoPh5jGJedDx2pZs;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$MainVodActivityMobile$iINEgSYVMFENoPh5jGJedDx2pZs;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private getSettings()V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getSettingsObservable()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$MainVodActivityMobile$IlMEGyKTcjT7cmYpX6mDJ8A77Ak;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$MainVodActivityMobile$IlMEGyKTcjT7cmYpX6mDJ8A77Ak;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private hideMovieFab()V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->searchMovieTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->searchMovieTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->fabClose:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 234
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->fabMovieSearch:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setClickable(Z)V

    return-void
.end method

.method private hideTvShowFab()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->fabTvShowSearch:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->fabClose:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 220
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->searchTvShowTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->searchTvShowTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->fabClose:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 222
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->fabTvShowSearch:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setClickable(Z)V

    return-void
.end method

.method static synthetic lambda$getMainVodView$0(Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;)I
    .locals 0

    .line 116
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->getOrder()I

    move-result p0

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->getOrder()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method private showMovieFab()V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->searchMovieTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->searchMovieTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->fabOpen:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 228
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->fabMovieSearch:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setClickable(Z)V

    return-void
.end method

.method private showTvShowsFab()V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->fabTvShowSearch:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->fabOpen:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 213
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->searchTvShowTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->searchTvShowTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->fabOpen:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 215
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->fabTvShowSearch:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setClickable(Z)V

    return-void
.end method

.method private startSearchActivity(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vodType"
        }
    .end annotation

    .line 185
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->fabClose()V

    .line 186
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "vod_type"

    .line 187
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->startActivity(Landroid/content/Intent;)V

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

    .line 76
    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/LocaleHelper;->onAttach(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public synthetic lambda$getMainVodView$1$MainVodActivityMobile(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 4

    if-eqz p1, :cond_4

    .line 109
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isFromCache()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 110
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->vodItems:Ljava/util/List;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 111
    :goto_0
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->getResponse_object()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 112
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->getResponse_object()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 113
    iget-object v2, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->vodItems:Ljava/util/List;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->getResponse_object()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :cond_2
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->vodItems:Ljava/util/List;

    sget-object v1, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$MainVodActivityMobile$ttScTQCvuWLikNeKg_kw1B3Iu4A;->INSTANCE:Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$MainVodActivityMobile$ttScTQCvuWLikNeKg_kw1B3Iu4A;

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 118
    new-instance p1, Lcom/magoware/magoware/webtv/vod/mobile/adapters/MainFragmentPagerAdapter;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->vodItems:Ljava/util/List;

    invoke-direct {p1, v1, v2}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/MainFragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    .line 119
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 120
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 121
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->mainTabs:Lcom/google/android/material/tabs/TabLayout;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v1}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 122
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->mainTabs:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1, p0}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    .line 124
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "vod_position"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 125
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_1

    .line 129
    :cond_3
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public synthetic lambda$getMainVodView$2$MainVodActivityMobile(Landroid/view/View;)V
    .locals 0

    .line 134
    iget-boolean p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->isOpen:Z

    if-eqz p1, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->fabClose()V

    goto :goto_0

    .line 137
    :cond_0
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->fabOpen()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$getMainVodView$3$MainVodActivityMobile(Landroid/view/View;)V
    .locals 0

    const-string p1, "movie"

    .line 142
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->startSearchActivity(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$getMainVodView$4$MainVodActivityMobile(Landroid/view/View;)V
    .locals 0

    const-string p1, "tvShow"

    .line 145
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->startSearchActivity(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$getMainVodView$5$MainVodActivityMobile(Landroid/view/View;)V
    .locals 0

    const-string p1, "movie"

    .line 149
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->startSearchActivity(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$getMainVodView$6$MainVodActivityMobile(Landroid/view/View;)V
    .locals 0

    const-string p1, "tvShow"

    .line 152
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->startSearchActivity(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$getSettings$7$MainVodActivityMobile(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 169
    iget v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    iget-object v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 170
    iget-object v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;

    iget v0, v0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->daysleft:I

    iput v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->daysLeft:I

    .line 171
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->SUBSCRIPTION_ENDED_MESSAGE:Ljava/lang/String;

    iget-object v3, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->days_left_message:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_0
    iget p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v0, 0x378

    if-ne p1, v0, :cond_1

    .line 174
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->finish()V

    goto :goto_0

    .line 175
    :cond_1
    iget p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->daysLeft:I

    if-gtz p1, :cond_2

    const p1, 0x7f14041d

    .line 176
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->finish()V

    goto :goto_0

    .line 179
    :cond_2
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->getMainVodView()V

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

    .line 257
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x2

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    .line 260
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget p2, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->tabUnSelectedPosition:I

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 159
    invoke-static {}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->get()Lcom/magoware/magoware/webtv/util/CustomConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->isScreenRotationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 160
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->setRequestedOrientation(I)V

    goto :goto_0

    .line 162
    :cond_0
    invoke-static {}, Lcom/magoware/magoware/webtv/MagowareApplication;->get()Lcom/magoware/magoware/webtv/MagowareApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/MagowareApplication;->getPreviousOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->setRequestedOrientation(I)V

    .line 164
    :goto_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->finish()V

    return-void
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

    .line 81
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    .line 85
    invoke-static {}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->get()Lcom/magoware/magoware/webtv/util/CustomConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->isVodScreenOrientationEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 86
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->setRequestedOrientation(I)V

    .line 89
    :cond_0
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->getSettings()V

    return-void
.end method

.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tab"
        }
    .end annotation

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tab"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->vodItems:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->isPinProtected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 240
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x2

    .line 241
    invoke-virtual {p0, p1, v0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tab"
        }
    .end annotation

    .line 247
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->tabUnSelectedPosition:I

    return-void
.end method
