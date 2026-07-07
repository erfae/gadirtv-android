.class public final Lcom/google/android/gms/internal/cast/zzam;
.super Landroid/widget/RelativeLayout;
.source "com.google.android.gms:play-services-cast-framework@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/cast/framework/IntroductoryOverlay;


# instance fields
.field private color:I

.field private zzlb:Landroid/app/Activity;

.field private zzlc:Landroid/view/View;

.field private zzle:Ljava/lang/String;

.field private zzlf:Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;

.field private final zznc:Z

.field private zznd:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzb;

.field private zzne:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzam;->zzlb:Landroid/app/Activity;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zzap()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzam;->zznc:Z

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zzan()Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzam;->zzlf:Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zzam()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzam;->zzlc:Landroid/view/View;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zzaq()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzam;->zzle:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zzao()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/cast/zzam;->color:I

    return-void
.end method

.method private final reset()V
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzam;->removeAllViews()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzam;->zzlb:Landroid/app/Activity;

    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzam;->zzlf:Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;

    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzam;->zzlc:Landroid/view/View;

    .line 13
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzam;->zznd:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzb;

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzam;->zzle:Ljava/lang/String;

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/google/android/gms/internal/cast/zzam;->color:I

    .line 16
    iput-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzam;->zzne:Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/cast/zzam;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/google/android/gms/internal/cast/zzam;->zzne:Z

    return p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/cast/zzam;)Landroid/app/Activity;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/android/gms/internal/cast/zzam;->zzlb:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/cast/zzam;)Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/google/android/gms/internal/cast/zzam;->zzlf:Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/cast/zzam;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzam;->reset()V

    return-void
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/cast/zzam;)Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzb;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/google/android/gms/internal/cast/zzam;->zznd:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzb;

    return-object p0
.end method

.method static zzh(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "accessibility"

    .line 44
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz p0, :cond_0

    .line 45
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final remove()V
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzam;->zzne:Z

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzam;->zzlb:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 41
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzam;->reset()V

    :cond_0
    return-void
.end method

.method public final show()V
    .locals 5

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzam;->zzlb:Landroid/app/Activity;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzam;->zzlc:Landroid/view/View;

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/google/android/gms/internal/cast/zzam;->zzne:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzam;->zzh(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 22
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzam;->zznc:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzam;->zzlb:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$zza;->zzf(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzam;->reset()V

    return-void

    .line 25
    :cond_2
    new-instance v0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzb;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzam;->zzlb:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzam;->zznd:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzb;

    .line 26
    iget v1, p0, Lcom/google/android/gms/internal/cast/zzam;->color:I

    if-eqz v1, :cond_3

    .line 27
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzb;->zzs(I)V

    .line 28
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzam;->zznd:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzb;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cast/zzam;->addView(Landroid/view/View;)V

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzam;->zzlb:Landroid/app/Activity;

    .line 30
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/android/gms/cast/framework/R$layout;->cast_help_text:I

    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzam;->zznd:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzb;

    const/4 v3, 0x0

    .line 31
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzi;

    .line 32
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzam;->zzle:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzi;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 33
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzam;->zznd:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzb;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzb;->zza(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzi;)V

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzam;->zznd:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzb;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzam;->zzlc:Landroid/view/View;

    new-instance v3, Lcom/google/android/gms/internal/cast/zzap;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/cast/zzap;-><init>(Lcom/google/android/gms/internal/cast/zzam;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzb;->zza(Landroid/view/View;Landroid/view/View;ZLcom/google/android/gms/cast/framework/internal/featurehighlight/zzg;)V

    .line 35
    iput-boolean v4, p0, Lcom/google/android/gms/internal/cast/zzam;->zzne:Z

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzam;->zzlb:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzam;->zznd:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzb;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzb;->zza(Ljava/lang/Runnable;)V

    :cond_4
    :goto_0
    return-void
.end method
