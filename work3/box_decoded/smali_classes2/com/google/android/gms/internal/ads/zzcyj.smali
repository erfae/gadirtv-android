.class public final Lcom/google/android/gms/internal/ads/zzcyj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# instance fields
.field private final zzfyi:Lcom/google/android/gms/internal/ads/zzcxq;

.field private final zzgwt:Lcom/google/android/gms/internal/ads/zzccl;

.field private final zzgwu:Lcom/google/android/gms/internal/ads/zzbrz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzccl;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcxq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcxq;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyj;->zzfyi:Lcom/google/android/gms/internal/ads/zzcxq;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcyj;->zzgwt:Lcom/google/android/gms/internal/ads/zzccl;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzccl;->zzanv()Lcom/google/android/gms/internal/ads/zzajt;

    move-result-object p1

    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcym;

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzcym;-><init>(Lcom/google/android/gms/internal/ads/zzcxq;Lcom/google/android/gms/internal/ads/zzajt;)V

    .line 8
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcyj;->zzgwu:Lcom/google/android/gms/internal/ads/zzbrz;

    return-void
.end method


# virtual methods
.method public final zzarz()Lcom/google/android/gms/internal/ads/zzcap;
    .locals 3

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcap;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcyj;->zzgwt:Lcom/google/android/gms/internal/ads/zzccl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcyj;->zzfyi:Lcom/google/android/gms/internal/ads/zzcxq;

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcxq;->zzart()Lcom/google/android/gms/internal/ads/zzwt;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcap;-><init>(Lcom/google/android/gms/internal/ads/zzccl;Lcom/google/android/gms/internal/ads/zzwt;)V

    return-object v0
.end method

.method public final zzasa()Lcom/google/android/gms/internal/ads/zzcxq;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyj;->zzfyi:Lcom/google/android/gms/internal/ads/zzcxq;

    return-object v0
.end method

.method public final zzasb()Lcom/google/android/gms/internal/ads/zzbru;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyj;->zzfyi:Lcom/google/android/gms/internal/ads/zzcxq;

    return-object v0
.end method

.method public final zzasc()Lcom/google/android/gms/internal/ads/zzbtj;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyj;->zzfyi:Lcom/google/android/gms/internal/ads/zzcxq;

    return-object v0
.end method

.method public final zzasd()Lcom/google/android/gms/internal/ads/zzbrz;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyj;->zzgwu:Lcom/google/android/gms/internal/ads/zzbrz;

    return-object v0
.end method

.method public final zzase()Lcom/google/android/gms/internal/ads/zzbsm;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyj;->zzfyi:Lcom/google/android/gms/internal/ads/zzcxq;

    return-object v0
.end method

.method public final zzasf()Lcom/google/android/gms/internal/ads/zzva;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyj;->zzfyi:Lcom/google/android/gms/internal/ads/zzcxq;

    return-object v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzwt;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyj;->zzfyi:Lcom/google/android/gms/internal/ads/zzcxq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcxq;->zzc(Lcom/google/android/gms/internal/ads/zzwt;)V

    return-void
.end method
