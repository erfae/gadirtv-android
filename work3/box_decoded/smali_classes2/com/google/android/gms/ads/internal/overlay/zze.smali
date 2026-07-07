.class public Lcom/google/android/gms/ads/internal/overlay/zze;
.super Lcom/google/android/gms/internal/ads/zzari;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzz;


# static fields
.field private static final zzdqh:I


# instance fields
.field protected final zzaap:Landroid/app/Activity;

.field private zzbou:Z

.field zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

.field zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

.field private zzdqj:Lcom/google/android/gms/ads/internal/overlay/zzk;

.field private zzdqk:Lcom/google/android/gms/ads/internal/overlay/zzr;

.field private zzdql:Z

.field private zzdqm:Landroid/widget/FrameLayout;

.field private zzdqn:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private zzdqo:Z

.field private zzdqp:Lcom/google/android/gms/ads/internal/overlay/zzh;

.field private zzdqq:Z

.field zzdqr:Lcom/google/android/gms/ads/internal/overlay/zzl;

.field private final zzdqs:Ljava/lang/Object;

.field private zzdqt:Ljava/lang/Runnable;

.field private zzdqu:Z

.field private zzdqv:Z

.field private zzdqw:Z

.field private zzdqx:Z

.field private zzdqy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 364
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqh:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzari;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdql:Z

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqo:Z

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzbou:Z

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqq:Z

    .line 6
    sget-object v1, Lcom/google/android/gms/ads/internal/overlay/zzl;->zzdrd:Lcom/google/android/gms/ads/internal/overlay/zzl;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqr:Lcom/google/android/gms/ads/internal/overlay/zzl;

    .line 7
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqs:Ljava/lang/Object;

    .line 8
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqw:Z

    .line 9
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqx:Z

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqy:Z

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaap:Landroid/app/Activity;

    return-void
.end method

.method private final zza(Landroid/content/res/Configuration;)V
    .locals 5

    .line 334
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdrt:Lcom/google/android/gms/ads/internal/zzi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdrt:Lcom/google/android/gms/ads/internal/zzi;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/zzi;->zzbov:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 335
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzks()Lcom/google/android/gms/ads/internal/util/zzu;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaap:Landroid/app/Activity;

    invoke-virtual {v3, v4, p1}, Lcom/google/android/gms/ads/internal/util/zzu;->zza(Landroid/app/Activity;Landroid/content/res/Configuration;)Z

    move-result p1

    .line 338
    iget-boolean v3, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzbou:Z

    const/16 v4, 0x13

    if-eqz v3, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    if-nez p1, :cond_2

    .line 340
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v4, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdrt:Lcom/google/android/gms/ads/internal/zzi;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdrt:Lcom/google/android/gms/ads/internal/zzi;

    iget-boolean p1, p1, Lcom/google/android/gms/ads/internal/zzi;->zzbpa:Z

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 342
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaap:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 343
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabf;->zzcow:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 344
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 345
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_5

    .line 346
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x100

    if-eqz v1, :cond_4

    const/16 v0, 0x1504

    if-eqz v2, :cond_4

    const/16 v0, 0x1706

    .line 352
    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void

    :cond_5
    const/16 v0, 0x400

    const/16 v3, 0x800

    if-eqz v1, :cond_6

    .line 355
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 356
    invoke-virtual {p1, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 357
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_7

    if-eqz v2, :cond_7

    .line 359
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x1002

    .line 360
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void

    .line 361
    :cond_6
    invoke-virtual {p1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 362
    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    :cond_7
    return-void
.end method

.method private final zzaj(Z)V
    .locals 4

    .line 133
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabf;->zzcub:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 134
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 135
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 136
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzq;

    invoke-direct {v1}, Lcom/google/android/gms/ads/internal/overlay/zzq;-><init>()V

    const/16 v2, 0x32

    .line 137
    iput v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzq;->size:I

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 138
    :goto_0
    iput v3, v1, Lcom/google/android/gms/ads/internal/overlay/zzq;->paddingLeft:I

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move v3, v0

    .line 139
    :goto_1
    iput v3, v1, Lcom/google/android/gms/ads/internal/overlay/zzq;->paddingRight:I

    .line 140
    iput v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzq;->paddingTop:I

    .line 141
    iput v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzq;->paddingBottom:I

    .line 142
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzr;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaap:Landroid/app/Activity;

    invoke-direct {v0, v2, v1, p0}, Lcom/google/android/gms/ads/internal/overlay/zzr;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/zzq;Lcom/google/android/gms/ads/internal/overlay/zzz;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqk:Lcom/google/android/gms/ads/internal/overlay/zzr;

    .line 143
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    .line 144
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    if-eqz p1, :cond_2

    const/16 v1, 0xb

    goto :goto_2

    :cond_2
    const/16 v1, 0x9

    .line 146
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 147
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdro:Z

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/ads/internal/overlay/zze;->zza(ZZ)V

    .line 148
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqp:Lcom/google/android/gms/ads/internal/overlay/zzh;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqk:Lcom/google/android/gms/ads/internal/overlay/zzr;

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzh;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final zzak(Z)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/ads/internal/overlay/zzi;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 198
    iget-boolean v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqv:Z

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 199
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaap:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 200
    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaap:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 203
    iget-object v3, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbdv;->zzacs()Lcom/google/android/gms/internal/ads/zzbfg;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 204
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbfg;->zzaby()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 205
    :goto_1
    iput-boolean v5, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqq:Z

    if-eqz v3, :cond_6

    .line 207
    iget-object v6, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v6, v6, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzks()Lcom/google/android/gms/ads/internal/util/zzu;

    const/4 v7, 0x6

    if-ne v6, v7, :cond_4

    .line 208
    iget-object v6, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaap:Landroid/app/Activity;

    .line 209
    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v2, :cond_3

    const/4 v5, 0x1

    :cond_3
    iput-boolean v5, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqq:Z

    goto :goto_2

    .line 210
    :cond_4
    iget-object v6, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v6, v6, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzks()Lcom/google/android/gms/ads/internal/util/zzu;

    const/4 v7, 0x7

    if-ne v6, v7, :cond_6

    .line 211
    iget-object v6, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaap:Landroid/app/Activity;

    .line 212
    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    const/4 v5, 0x1

    :cond_5
    iput-boolean v5, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqq:Z

    .line 213
    :cond_6
    :goto_2
    iget-boolean v5, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqq:Z

    const/16 v6, 0x2e

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Delay onShow to next orientation change: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/zzd;->zzeb(Ljava/lang/String;)V

    .line 214
    iget-object v5, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v5, v5, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    invoke-virtual {v1, v5}, Lcom/google/android/gms/ads/internal/overlay/zze;->setRequestedOrientation(I)V

    .line 215
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzks()Lcom/google/android/gms/ads/internal/util/zzu;

    const/high16 v5, 0x1000000

    .line 216
    invoke-virtual {v0, v5, v5}, Landroid/view/Window;->setFlags(II)V

    const-string v0, "Hardware acceleration on the AdActivity window enabled."

    .line 217
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzeb(Ljava/lang/String;)V

    .line 218
    iget-boolean v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzbou:Z

    if-nez v0, :cond_7

    .line 219
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqp:Lcom/google/android/gms/ads/internal/overlay/zzh;

    const/high16 v5, -0x1000000

    invoke-virtual {v0, v5}, Lcom/google/android/gms/ads/internal/overlay/zzh;->setBackgroundColor(I)V

    goto :goto_3

    .line 220
    :cond_7
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqp:Lcom/google/android/gms/ads/internal/overlay/zzh;

    sget v5, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqh:I

    invoke-virtual {v0, v5}, Lcom/google/android/gms/ads/internal/overlay/zzh;->setBackgroundColor(I)V

    .line 221
    :goto_3
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaap:Landroid/app/Activity;

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqp:Lcom/google/android/gms/ads/internal/overlay/zzh;

    invoke-virtual {v0, v5}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 223
    iput-boolean v2, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqv:Z

    if-eqz p1, :cond_e

    .line 226
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzbed;

    iget-object v6, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaap:Landroid/app/Activity;

    .line 227
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    if-eqz v0, :cond_8

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbdv;->zzacq()Lcom/google/android/gms/internal/ads/zzbfn;

    move-result-object v0

    move-object v7, v0

    goto :goto_4

    :cond_8
    move-object v7, v4

    .line 228
    :goto_4
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    if-eqz v0, :cond_9

    .line 229
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbdv;->zzacr()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_5

    :cond_9
    move-object v8, v4

    :goto_5
    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 230
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v13, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbpd:Lcom/google/android/gms/internal/ads/zzazh;

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 231
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    if-eqz v0, :cond_a

    .line 232
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbdv;->zzaak()Lcom/google/android/gms/ads/internal/zzb;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_6

    :cond_a
    move-object/from16 v16, v4

    .line 234
    :goto_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzts;->zzne()Lcom/google/android/gms/internal/ads/zzts;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move v10, v3

    .line 235
    invoke-static/range {v6 .. v21}, Lcom/google/android/gms/internal/ads/zzbed;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbfn;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzef;Lcom/google/android/gms/internal/ads/zzacg;Lcom/google/android/gms/internal/ads/zzazh;Lcom/google/android/gms/internal/ads/zzabs;Lcom/google/android/gms/ads/internal/zzk;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzts;Lcom/google/android/gms/internal/ads/zzsu;ZLcom/google/android/gms/internal/ads/zzdmu;Lcom/google/android/gms/internal/ads/zzdmz;)Lcom/google/android/gms/internal/ads/zzbdv;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbdv;->zzacs()Lcom/google/android/gms/internal/ads/zzbfg;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v7, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdfr:Lcom/google/android/gms/internal/ads/zzagy;

    const/4 v8, 0x0

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v9, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdfs:Lcom/google/android/gms/internal/ads/zzaha;

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v10, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdrq:Lcom/google/android/gms/ads/internal/overlay/zzu;

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 242
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    if-eqz v0, :cond_b

    .line 243
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbdv;->zzacs()Lcom/google/android/gms/internal/ads/zzbfg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbfg;->zzabx()Lcom/google/android/gms/ads/internal/zza;

    move-result-object v0

    move-object v13, v0

    goto :goto_7

    :cond_b
    move-object v13, v4

    :goto_7
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 245
    invoke-interface/range {v5 .. v18}, Lcom/google/android/gms/internal/ads/zzbfg;->zza(Lcom/google/android/gms/internal/ads/zzva;Lcom/google/android/gms/internal/ads/zzagy;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/internal/ads/zzaha;Lcom/google/android/gms/ads/internal/overlay/zzu;ZLcom/google/android/gms/internal/ads/zzahu;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzaqx;Lcom/google/android/gms/internal/ads/zzawq;Lcom/google/android/gms/internal/ads/zzcqo;Lcom/google/android/gms/internal/ads/zzdrz;Lcom/google/android/gms/internal/ads/zzckq;)V

    .line 246
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    .line 247
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbdv;->zzacs()Lcom/google/android/gms/internal/ads/zzbfg;

    move-result-object v0

    new-instance v5, Lcom/google/android/gms/ads/internal/overlay/zzd;

    invoke-direct {v5, v1}, Lcom/google/android/gms/ads/internal/overlay/zzd;-><init>(Lcom/google/android/gms/ads/internal/overlay/zze;)V

    .line 248
    invoke-interface {v0, v5}, Lcom/google/android/gms/internal/ads/zzbfg;->zza(Lcom/google/android/gms/internal/ads/zzbfj;)V

    .line 249
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 250
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    invoke-interface {v0, v5}, Lcom/google/android/gms/internal/ads/zzbdv;->loadUrl(Ljava/lang/String;)V

    goto :goto_8

    .line 251
    :cond_c
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdrp:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 252
    iget-object v5, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdrn:Ljava/lang/String;

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v7, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdrp:Ljava/lang/String;

    const/4 v10, 0x0

    const-string v8, "text/html"

    const-string v9, "UTF-8"

    invoke-interface/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzbdv;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :goto_8
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    if-eqz v0, :cond_f

    .line 255
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbdv;->zzb(Lcom/google/android/gms/ads/internal/overlay/zze;)V

    goto :goto_9

    .line 253
    :cond_d
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzi;

    const-string v2, "No URL or HTML to display in ad overlay."

    invoke-direct {v0, v2}, Lcom/google/android/gms/ads/internal/overlay/zzi;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    const-string v2, "Error obtaining webview."

    .line 238
    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 239
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzi;

    const-string v2, "Could not obtain webview for the overlay."

    invoke-direct {v0, v2}, Lcom/google/android/gms/ads/internal/overlay/zzi;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_e
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    .line 257
    iget-object v5, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaap:Landroid/app/Activity;

    invoke-interface {v0, v5}, Lcom/google/android/gms/internal/ads/zzbdv;->zzbx(Landroid/content/Context;)V

    .line 258
    :cond_f
    :goto_9
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbdv;->zza(Lcom/google/android/gms/ads/internal/overlay/zze;)V

    .line 259
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    if-eqz v0, :cond_10

    .line 260
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbdv;->zzacw()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqp:Lcom/google/android/gms/ads/internal/overlay/zzh;

    invoke-static {v0, v5}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Landroid/view/View;)V

    .line 261
    :cond_10
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbdv;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 262
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_11

    .line 263
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzbdv;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 264
    :cond_11
    iget-boolean v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzbou:Z

    if-eqz v0, :cond_12

    .line 265
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbdv;->zzade()V

    .line 266
    :cond_12
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaap:Landroid/app/Activity;

    iget-object v6, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdrn:Ljava/lang/String;

    iget-object v7, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v7, v7, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdrp:Ljava/lang/String;

    invoke-interface {v0, v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzbdv;->zza(Landroid/view/ViewGroup;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqp:Lcom/google/android/gms/ads/internal/overlay/zzh;

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    .line 268
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzbdv;->getView()Landroid/view/View;

    move-result-object v4

    const/4 v5, -0x1

    .line 269
    invoke-virtual {v0, v4, v5, v5}, Lcom/google/android/gms/ads/internal/overlay/zzh;->addView(Landroid/view/View;II)V

    if-nez p1, :cond_13

    .line 270
    iget-boolean v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqq:Z

    if-nez v0, :cond_13

    .line 271
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzvj()V

    .line 272
    :cond_13
    invoke-direct {v1, v3}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaj(Z)V

    .line 273
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbdv;->zzacu()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 274
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/ads/internal/overlay/zze;->zza(ZZ)V

    :cond_14
    return-void

    .line 202
    :cond_15
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzi;

    const-string v2, "Invalid activity, no window available."

    invoke-direct {v0, v2}, Lcom/google/android/gms/ads/internal/overlay/zzi;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Landroid/view/View;)V
    .locals 1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 317
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlf()Lcom/google/android/gms/internal/ads/zzard;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzard;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private final zzvg()V
    .locals 5

    .line 276
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaap:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqw:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 278
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqw:Z

    .line 279
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    if-eqz v0, :cond_2

    .line 280
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqr:Lcom/google/android/gms/ads/internal/overlay/zzl;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzl;->zzvn()I

    move-result v0

    .line 281
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdv;->zzdv(I)V

    .line 282
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqs:Ljava/lang/Object;

    monitor-enter v0

    .line 283
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqu:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbdv;->zzada()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 284
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzg;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/overlay/zzg;-><init>(Lcom/google/android/gms/ads/internal/overlay/zze;)V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqt:Ljava/lang/Runnable;

    .line 285
    sget-object v1, Lcom/google/android/gms/ads/internal/util/zzm;->zzedd:Lcom/google/android/gms/internal/ads/zzduw;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqt:Ljava/lang/Runnable;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzabf;->zzcot:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 287
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v3

    .line 288
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 289
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzduw;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 290
    monitor-exit v0

    return-void

    .line 291
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 292
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzvh()V

    :cond_3
    :goto_1
    return-void
.end method

.method private final zzvj()V
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbdv;->zzvj()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 13
    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzl;->zzdrf:Lcom/google/android/gms/ads/internal/overlay/zzl;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqr:Lcom/google/android/gms/ads/internal/overlay/zzl;

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaap:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    .line 32
    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzl;->zzdrd:Lcom/google/android/gms/ads/internal/overlay/zzl;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqr:Lcom/google/android/gms/ads/internal/overlay/zzl;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaap:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v2, "com.google.android.gms.ads.internal.overlay.hasResumed"

    .line 48
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqo:Z

    .line 49
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaap:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzd(Landroid/content/Intent;)Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v2, :cond_a

    .line 52
    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbpd:Lcom/google/android/gms/internal/ads/zzazh;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzazh;->zzegm:I

    const v3, 0x7270e0

    if-le v2, v3, :cond_1

    .line 53
    sget-object v2, Lcom/google/android/gms/ads/internal/overlay/zzl;->zzdrg:Lcom/google/android/gms/ads/internal/overlay/zzl;

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqr:Lcom/google/android/gms/ads/internal/overlay/zzl;

    .line 54
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaap:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 55
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaap:Landroid/app/Activity;

    .line 56
    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "shouldCallOnOverlayOpened"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqy:Z

    .line 57
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdrt:Lcom/google/android/gms/ads/internal/zzi;

    if-eqz v2, :cond_3

    .line 58
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdrt:Lcom/google/android/gms/ads/internal/zzi;

    iget-boolean v2, v2, Lcom/google/android/gms/ads/internal/zzi;->zzbou:Z

    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzbou:Z

    goto :goto_1

    .line 59
    :cond_3
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzbou:Z

    .line 60
    :goto_1
    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzbou:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdrt:Lcom/google/android/gms/ads/internal/zzi;

    iget v2, v2, Lcom/google/android/gms/ads/internal/zzi;->zzboz:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 61
    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/zzj;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/gms/ads/internal/overlay/zzj;-><init>(Lcom/google/android/gms/ads/internal/overlay/zze;Lcom/google/android/gms/ads/internal/overlay/zzf;)V

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/util/zza;->zzxl()Lcom/google/android/gms/internal/ads/zzdyz;

    :cond_4
    if-nez p1, :cond_6

    .line 63
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdrm:Lcom/google/android/gms/ads/internal/overlay/zzp;

    if-eqz p1, :cond_5

    .line 64
    iget-boolean p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqy:Z

    if-eqz p1, :cond_5

    .line 65
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdrm:Lcom/google/android/gms/ads/internal/overlay/zzp;

    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/overlay/zzp;->zzux()V

    .line 66
    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdrr:I

    if-eq p1, v1, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzcgp:Lcom/google/android/gms/internal/ads/zzva;

    if-eqz p1, :cond_6

    .line 67
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzcgp:Lcom/google/android/gms/internal/ads/zzva;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzva;->onAdClicked()V

    .line 68
    :cond_6
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzh;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaap:Landroid/app/Activity;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdrs:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbpd:Lcom/google/android/gms/internal/ads/zzazh;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzazh;->zzbrf:Ljava/lang/String;

    invoke-direct {p1, v2, v3, v4}, Lcom/google/android/gms/ads/internal/overlay/zzh;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqp:Lcom/google/android/gms/ads/internal/overlay/zzh;

    const/16 v2, 0x3e8

    .line 69
    invoke-virtual {p1, v2}, Lcom/google/android/gms/ads/internal/overlay/zzh;->setId(I)V

    .line 70
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzks()Lcom/google/android/gms/ads/internal/util/zzu;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaap:Landroid/app/Activity;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/ads/internal/util/zzu;->zzi(Landroid/app/Activity;)V

    .line 71
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdrr:I

    if-eq p1, v1, :cond_9

    const/4 v2, 0x2

    if-eq p1, v2, :cond_8

    const/4 v0, 0x3

    if-ne p1, v0, :cond_7

    .line 77
    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzak(Z)V

    return-void

    .line 79
    :cond_7
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzi;

    const-string v0, "Could not determine ad overlay type."

    invoke-direct {p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzi;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_8
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzk;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    invoke-direct {p1, v1}, Lcom/google/android/gms/ads/internal/overlay/zzk;-><init>(Lcom/google/android/gms/internal/ads/zzbdv;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqj:Lcom/google/android/gms/ads/internal/overlay/zzk;

    .line 75
    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzak(Z)V

    return-void

    .line 72
    :cond_9
    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzak(Z)V

    return-void

    .line 51
    :cond_a
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzi;

    const-string v0, "Could not get info for ad overlay."

    invoke-direct {p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzi;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/google/android/gms/ads/internal/overlay/zzi; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 80
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/overlay/zzi;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzfa(Ljava/lang/String;)V

    .line 81
    sget-object p1, Lcom/google/android/gms/ads/internal/overlay/zzl;->zzdrg:Lcom/google/android/gms/ads/internal/overlay/zzl;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqr:Lcom/google/android/gms/ads/internal/overlay/zzl;

    .line 82
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaap:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    if-eqz v0, :cond_0

    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqp:Lcom/google/android/gms/ads/internal/overlay/zzh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbdv;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzh;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :catch_0
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzvg()V

    return-void
.end method

.method public final onPause()V
    .locals 2

    .line 103
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzvc()V

    .line 104
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdrm:Lcom/google/android/gms/ads/internal/overlay/zzp;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdrm:Lcom/google/android/gms/ads/internal/overlay/zzp;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzp;->onPause()V

    .line 106
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabf;->zzctz:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 107
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 108
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaap:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqj:Lcom/google/android/gms/ads/internal/overlay/zzk;

    if-nez v0, :cond_2

    .line 110
    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzks()Lcom/google/android/gms/ads/internal/util/zzu;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzu;->zza(Lcom/google/android/gms/internal/ads/zzbdv;)Z

    .line 111
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzvg()V

    return-void
.end method

.method public final onRestart()V
    .locals 0

    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdrm:Lcom/google/android/gms/ads/internal/overlay/zzp;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdrm:Lcom/google/android/gms/ads/internal/overlay/zzp;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzp;->onResume()V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaap:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zza(Landroid/content/res/Configuration;)V

    .line 96
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabf;->zzctz:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 97
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 98
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbdv;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzks()Lcom/google/android/gms/ads/internal/util/zzu;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzu;->zzb(Lcom/google/android/gms/internal/ads/zzbdv;)Z

    return-void

    :cond_1
    const-string v0, "The webview does not exist. Ignoring action."

    .line 101
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzfa(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 117
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqo:Z

    const-string v1, "com.google.android.gms.ads.internal.overlay.hasResumed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 85
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabf;->zzctz:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 86
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 87
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbdv;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzks()Lcom/google/android/gms/ads/internal/util/zzu;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzu;->zzb(Lcom/google/android/gms/internal/ads/zzbdv;)Z

    return-void

    :cond_0
    const-string v0, "The webview does not exist. Ignoring action."

    .line 91
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzfa(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onStop()V
    .locals 2

    .line 119
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabf;->zzctz:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 120
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 121
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaap:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqj:Lcom/google/android/gms/ads/internal/overlay/zzk;

    if-nez v0, :cond_1

    .line 124
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzks()Lcom/google/android/gms/ads/internal/util/zzu;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzu;->zza(Lcom/google/android/gms/internal/ads/zzbdv;)Z

    .line 125
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzvg()V

    return-void
.end method

.method public final onUserLeaveHint()V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdrm:Lcom/google/android/gms/ads/internal/overlay/zzp;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdrm:Lcom/google/android/gms/ads/internal/overlay/zzp;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzp;->onUserLeaveHint()V

    :cond_0
    return-void
.end method

.method public final setRequestedOrientation(I)V
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaap:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sget-object v1, Lcom/google/android/gms/internal/ads/zzabf;->zzcwi:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 171
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 172
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaap:Landroid/app/Activity;

    .line 173
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sget-object v1, Lcom/google/android/gms/internal/ads/zzabf;->zzcwj:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 175
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 176
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v1, Lcom/google/android/gms/internal/ads/zzabf;->zzcwk:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 178
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 179
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v1, Lcom/google/android/gms/internal/ads/zzabf;->zzcwl:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 181
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 182
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    return-void

    .line 184
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaap:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 187
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzku()Lcom/google/android/gms/internal/ads/zzayg;

    move-result-object v0

    const-string v1, "AdOverlay.setRequestedOrientation"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzayg;->zzb(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2

    .line 189
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaap:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqm:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    .line 190
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 191
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqm:Landroid/widget/FrameLayout;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 192
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaap:Landroid/app/Activity;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqm:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 194
    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqv:Z

    .line 195
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqn:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 196
    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdql:Z

    return-void
.end method

.method public final zza(ZZ)V
    .locals 6

    .line 152
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabf;->zzcou:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 154
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 155
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdrt:Lcom/google/android/gms/ads/internal/zzi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdrt:Lcom/google/android/gms/ads/internal/zzi;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/zzi;->zzbpb:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 156
    :goto_0
    sget-object v3, Lcom/google/android/gms/internal/ads/zzabf;->zzcov:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 158
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v3

    .line 159
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdrt:Lcom/google/android/gms/ads/internal/zzi;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdrt:Lcom/google/android/gms/ads/internal/zzi;

    iget-boolean v3, v3, Lcom/google/android/gms/ads/internal/zzi;->zzbpc:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    if-nez v3, :cond_2

    .line 161
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaqu;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    const-string v5, "useCustomClose"

    invoke-direct {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzaqu;-><init>(Lcom/google/android/gms/internal/ads/zzbdv;Ljava/lang/String;)V

    const-string v4, "Custom close has been disabled for interstitial ads in this ad slot."

    .line 162
    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/zzaqu;->zzdt(Ljava/lang/String;)V

    .line 163
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqk:Lcom/google/android/gms/ads/internal/overlay/zzr;

    if-eqz p1, :cond_5

    if-nez v3, :cond_4

    if-eqz p2, :cond_3

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 164
    :cond_4
    :goto_2
    invoke-virtual {p1, v1}, Lcom/google/android/gms/ads/internal/overlay/zzr;->zzal(Z)V

    :cond_5
    return-void
.end method

.method public final zzad(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    .line 114
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/Configuration;

    .line 115
    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/overlay/zze;->zza(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final zzdp()V
    .locals 1

    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqv:Z

    return-void
.end method

.method public final zzvc()V
    .locals 3

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdql:Z

    if-eqz v1, :cond_0

    .line 17
    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zze;->setRequestedOrientation(I)V

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqm:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaap:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqp:Lcom/google/android/gms/ads/internal/overlay/zzh;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqv:Z

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqm:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 23
    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqm:Landroid/widget/FrameLayout;

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqn:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_2

    .line 25
    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 26
    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqn:Landroid/webkit/WebChromeClient$CustomViewCallback;

    :cond_2
    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdql:Z

    return-void
.end method

.method public final zzvd()V
    .locals 1

    .line 29
    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzl;->zzdre:Lcom/google/android/gms/ads/internal/overlay/zzl;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqr:Lcom/google/android/gms/ads/internal/overlay/zzl;

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaap:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final zzve()Z
    .locals 4

    .line 37
    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzl;->zzdrd:Lcom/google/android/gms/ads/internal/overlay/zzl;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqr:Lcom/google/android/gms/ads/internal/overlay/zzl;

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 40
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbdv;->zzacz()Z

    move-result v0

    if-nez v0, :cond_1

    .line 42
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    .line 43
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "onbackblocked"

    .line 44
    invoke-interface {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzbdv;->zza(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return v0
.end method

.method public final zzvf()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqp:Lcom/google/android/gms/ads/internal/overlay/zzh;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqk:Lcom/google/android/gms/ads/internal/overlay/zzr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzh;->removeView(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 167
    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaj(Z)V

    return-void
.end method

.method final zzvh()V
    .locals 5

    .line 294
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqx:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 296
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqx:Z

    .line 297
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    if-eqz v0, :cond_3

    .line 298
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqp:Lcom/google/android/gms/ads/internal/overlay/zzh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbdv;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzh;->removeView(Landroid/view/View;)V

    .line 299
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqj:Lcom/google/android/gms/ads/internal/overlay/zzk;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 300
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/zzk;->context:Landroid/content/Context;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzbdv;->zzbx(Landroid/content/Context;)V

    .line 301
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzbdv;->zzaz(Z)V

    .line 302
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqj:Lcom/google/android/gms/ads/internal/overlay/zzk;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/zzk;->parent:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    .line 303
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbdv;->getView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqj:Lcom/google/android/gms/ads/internal/overlay/zzk;

    iget v3, v3, Lcom/google/android/gms/ads/internal/overlay/zzk;->index:I

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqj:Lcom/google/android/gms/ads/internal/overlay/zzk;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzdrc:Landroid/view/ViewGroup$LayoutParams;

    .line 304
    invoke-virtual {v0, v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 305
    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqj:Lcom/google/android/gms/ads/internal/overlay/zzk;

    goto :goto_0

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaap:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 307
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaap:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzbdv;->zzbx(Landroid/content/Context;)V

    .line 308
    :cond_2
    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    .line 309
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdrm:Lcom/google/android/gms/ads/internal/overlay/zzp;

    if-eqz v0, :cond_4

    .line 310
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdrm:Lcom/google/android/gms/ads/internal/overlay/zzp;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqr:Lcom/google/android/gms/ads/internal/overlay/zzl;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzp;->zza(Lcom/google/android/gms/ads/internal/overlay/zzl;)V

    .line 311
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    if-eqz v0, :cond_5

    .line 312
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    .line 313
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbdv;->zzacw()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbdv;->getView()Landroid/view/View;

    move-result-object v1

    .line 314
    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method public final zzvi()V
    .locals 1

    .line 319
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqq:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 320
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqq:Z

    .line 321
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzvj()V

    :cond_0
    return-void
.end method

.method public final zzvk()V
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqp:Lcom/google/android/gms/ads/internal/overlay/zzh;

    const/4 v1, 0x1

    .line 326
    iput-boolean v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzh;->zzdra:Z

    return-void
.end method

.method public final zzvl()V
    .locals 3

    .line 328
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqs:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 329
    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqu:Z

    .line 330
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqt:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 331
    sget-object v1, Lcom/google/android/gms/ads/internal/util/zzm;->zzedd:Lcom/google/android/gms/internal/ads/zzduw;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqt:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzduw;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 332
    sget-object v1, Lcom/google/android/gms/ads/internal/util/zzm;->zzedd:Lcom/google/android/gms/internal/ads/zzduw;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdqt:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzduw;->post(Ljava/lang/Runnable;)Z

    .line 333
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
