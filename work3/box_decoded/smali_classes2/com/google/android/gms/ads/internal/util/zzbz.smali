.class public final Lcom/google/android/gms/ads/internal/util/zzbz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# instance fields
.field private final view:Landroid/view/View;

.field private zzbrl:Z

.field private zzbvu:Z

.field private zzefq:Landroid/app/Activity;

.field private zzefr:Z

.field private zzefs:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private zzeft:Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzbz;->zzefq:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzbz;->view:Landroid/view/View;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/ads/internal/util/zzbz;->zzefs:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzbz;->zzeft:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    return-void
.end method

.method private static zzk(Landroid/app/Activity;)Landroid/view/ViewTreeObserver;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 46
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 49
    :cond_1
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v0

    .line 52
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    return-object p0
.end method

.method private final zzzb()V
    .locals 2

    .line 23
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/util/zzbz;->zzefr:Z

    if-nez v0, :cond_2

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzbz;->zzefs:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_1

    .line 25
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzbz;->zzefq:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 27
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzbz;->zzk(Landroid/app/Activity;)Landroid/view/ViewTreeObserver;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 29
    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 30
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzln()Lcom/google/android/gms/internal/ads/zzazy;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzbz;->view:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzbz;->zzefs:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzazy;->zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/util/zzbz;->zzefr:Z

    :cond_2
    return-void
.end method

.method private final zzzc()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzbz;->zzefq:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 35
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/util/zzbz;->zzefr:Z

    if-eqz v1, :cond_2

    .line 36
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzbz;->zzefs:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v1, :cond_1

    .line 38
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzbz;->zzk(Landroid/app/Activity;)Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 40
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzks()Lcom/google/android/gms/ads/internal/util/zzu;

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/util/zzbz;->zzefr:Z

    :cond_2
    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 1

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/util/zzbz;->zzbrl:Z

    .line 17
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/util/zzbz;->zzbvu:Z

    if-eqz v0, :cond_0

    .line 18
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzbz;->zzzb()V

    :cond_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/util/zzbz;->zzbrl:Z

    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzbz;->zzzc()V

    return-void
.end method

.method public final zzj(Landroid/app/Activity;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzbz;->zzefq:Landroid/app/Activity;

    return-void
.end method

.method public final zzyz()V
    .locals 1

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/util/zzbz;->zzbvu:Z

    .line 10
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/util/zzbz;->zzbrl:Z

    if-eqz v0, :cond_0

    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzbz;->zzzb()V

    :cond_0
    return-void
.end method

.method public final zzza()V
    .locals 1

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/util/zzbz;->zzbvu:Z

    .line 14
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzbz;->zzzc()V

    return-void
.end method
