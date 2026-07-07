.class public final Lcom/google/android/gms/internal/cast/zzce;
.super Lcom/google/android/gms/internal/cast/zzca;
.source "com.google.android.gms:play-services-cast-framework@@18.1.0"


# instance fields
.field private final zzvf:Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;

.field private final zzvj:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;

.field private final zzwm:Landroid/widget/TextView;

.field private final zzzq:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/widget/RelativeLayout;Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzca;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzce;->zzzq:Landroid/widget/RelativeLayout;

    .line 3
    sget v0, Lcom/google/android/gms/cast/framework/R$id;->tooltip:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzce;->zzwm:Landroid/widget/TextView;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzce;->zzvj:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/cast/zzce;->zzvf:Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;

    .line 8
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    sget-object p3, Lcom/google/android/gms/cast/framework/R$styleable;->CastExpandedController:[I

    sget v0, Lcom/google/android/gms/cast/framework/R$attr;->castExpandedControllerStyle:I

    sget v1, Lcom/google/android/gms/cast/framework/R$style;->CastExpandedController:I

    const/4 v2, 0x0

    .line 9
    invoke-virtual {p2, v2, p3, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 10
    sget p3, Lcom/google/android/gms/cast/framework/R$styleable;->CastExpandedController_castSeekBarTooltipBackgroundColor:I

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 12
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 13
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    .line 14
    invoke-virtual {p1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 15
    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method private final zzea()V
    .locals 7

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzca;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzce;->zzzq:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzce;->zzwm:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzce;->zzvf:Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;

    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzce;->zzvj:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;

    .line 38
    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->getProgress()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzw(I)J

    move-result-wide v3

    .line 39
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zze(J)Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzce;->zzvj:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;

    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->getMeasuredWidth()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzce;->zzvj:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzce;->zzvj:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    const/high16 v2, -0x80000000

    .line 43
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 44
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 45
    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzce;->zzwm:Landroid/widget/TextView;

    invoke-virtual {v4, v2, v3}, Landroid/widget/TextView;->measure(II)V

    .line 46
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzce;->zzwm:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 47
    iget-object v5, p0, Lcom/google/android/gms/internal/cast/zzce;->zzvj:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;

    .line 48
    invoke-virtual {v5}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->getProgress()I

    move-result v5

    int-to-double v5, v5

    mul-double v5, v5, v3

    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzce;->zzvj:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;

    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->getMaxProgress()I

    move-result v3

    int-to-double v3, v3

    div-double/2addr v5, v3

    int-to-double v3, v0

    mul-double v5, v5, v3

    double-to-int v3, v5

    .line 49
    div-int/lit8 v4, v2, 0x2

    sub-int/2addr v3, v4

    .line 50
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 51
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzce;->zzwm:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 52
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzce;->zzwm:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 34
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzce;->zzzq:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final onMediaStatusUpdated()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzce;->zzea()V

    return-void
.end method

.method public final onSessionConnected(Lcom/google/android/gms/cast/framework/CastSession;)V
    .locals 0

    .line 22
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/cast/zzca;->onSessionConnected(Lcom/google/android/gms/cast/framework/CastSession;)V

    .line 23
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzce;->zzea()V

    return-void
.end method

.method public final onSessionEnded()V
    .locals 0

    .line 25
    invoke-super {p0}, Lcom/google/android/gms/internal/cast/zzca;->onSessionEnded()V

    .line 26
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzce;->zzea()V

    return-void
.end method

.method public final zzg(J)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzce;->zzea()V

    return-void
.end method

.method public final zzk(Z)V
    .locals 0

    .line 19
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/cast/zzca;->zzk(Z)V

    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzce;->zzea()V

    return-void
.end method
