.class public final Lcom/google/android/gms/internal/ads/zzbkx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# instance fields
.field private final view:Landroid/view/View;

.field private final zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

.field private final zzfrz:Lcom/google/android/gms/internal/ads/zzdmx;

.field private final zzfsa:I

.field private final zzfsb:Z

.field private final zzfsc:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzbdv;Lcom/google/android/gms/internal/ads/zzdmx;IZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbkx;->view:Landroid/view/View;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbkx;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbkx;->zzfrz:Lcom/google/android/gms/internal/ads/zzdmx;

    .line 5
    iput p4, p0, Lcom/google/android/gms/internal/ads/zzbkx;->zzfsa:I

    .line 6
    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzbkx;->zzfsb:Z

    .line 7
    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzbkx;->zzfsc:Z

    return-void
.end method


# virtual methods
.method public final zzaim()Lcom/google/android/gms/internal/ads/zzbdv;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkx;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    return-object v0
.end method

.method public final zzain()Landroid/view/View;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkx;->view:Landroid/view/View;

    return-object v0
.end method

.method public final zzaio()Lcom/google/android/gms/internal/ads/zzdmx;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkx;->zzfrz:Lcom/google/android/gms/internal/ads/zzdmx;

    return-object v0
.end method

.method public final zzaip()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbkx;->zzfsa:I

    return v0
.end method

.method public final zzaiq()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbkx;->zzfsb:Z

    return v0
.end method

.method public final zzair()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbkx;->zzfsc:Z

    return v0
.end method
