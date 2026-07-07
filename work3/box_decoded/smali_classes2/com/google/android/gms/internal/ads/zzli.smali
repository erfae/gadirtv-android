.class final Lcom/google/android/gms/internal/ads/zzli;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# instance fields
.field public final zzaso:Lcom/google/android/gms/internal/ads/zzkh;

.field public final zzayj:Lcom/google/android/gms/internal/ads/zzlq;

.field public zzayk:Lcom/google/android/gms/internal/ads/zzlo;

.field public zzayl:Lcom/google/android/gms/internal/ads/zzlc;

.field public zzaym:I

.field public zzayn:I

.field public zzayo:I

.field public zzayp:Lcom/google/android/gms/internal/ads/zzkg;

.field public zzayq:Lcom/google/android/gms/internal/ads/zzlr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzkh;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzlq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzlq;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzayj:Lcom/google/android/gms/internal/ads/zzlq;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzli;->zzaso:Lcom/google/android/gms/internal/ads/zzkh;

    return-void
.end method


# virtual methods
.method public final reset()V
    .locals 4

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzayj:Lcom/google/android/gms/internal/ads/zzlq;

    const/4 v1, 0x0

    .line 11
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzlq;->zzbal:I

    const-wide/16 v2, 0x0

    .line 12
    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzlq;->zzbay:J

    .line 13
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzlq;->zzbas:Z

    .line 14
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzlq;->zzbax:Z

    const/4 v2, 0x0

    .line 15
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzlq;->zzbau:Lcom/google/android/gms/internal/ads/zzlr;

    .line 16
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzli;->zzaym:I

    .line 17
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzli;->zzayo:I

    .line 18
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzli;->zzayn:I

    .line 19
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzli;->zzayp:Lcom/google/android/gms/internal/ads/zzkg;

    .line 20
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzli;->zzayq:Lcom/google/android/gms/internal/ads/zzlr;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzlo;Lcom/google/android/gms/internal/ads/zzlc;)V
    .locals 1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzpc;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzlo;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzayk:Lcom/google/android/gms/internal/ads/zzlo;

    .line 6
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzpc;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzlc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzli;->zzayl:Lcom/google/android/gms/internal/ads/zzlc;

    .line 7
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzli;->zzaso:Lcom/google/android/gms/internal/ads/zzkh;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzlo;->zzahv:Lcom/google/android/gms/internal/ads/zzhp;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzkh;->zze(Lcom/google/android/gms/internal/ads/zzhp;)V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzli;->reset()V

    return-void
.end method
