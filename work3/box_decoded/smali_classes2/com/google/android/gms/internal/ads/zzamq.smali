.class public final Lcom/google/android/gms/internal/ads/zzamq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# instance fields
.field private zzdkj:Lcom/google/android/gms/internal/ads/zzalb;

.field private zzdkk:Lcom/google/android/gms/internal/ads/zzdyz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdyz<",
            "Lcom/google/android/gms/internal/ads/zzalz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzalb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamq;->zzdkj:Lcom/google/android/gms/internal/ads/zzalb;

    return-void
.end method

.method private final zzub()V
    .locals 4

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamq;->zzdkk:Lcom/google/android/gms/internal/ads/zzdyz;

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzazq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzazq;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamq;->zzdkk:Lcom/google/android/gms/internal/ads/zzdyz;

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamq;->zzdkj:Lcom/google/android/gms/internal/ads/zzalb;

    const/4 v2, 0x0

    .line 10
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzalb;->zzb(Lcom/google/android/gms/internal/ads/zzef;)Lcom/google/android/gms/internal/ads/zzalo;

    move-result-object v1

    .line 11
    new-instance v2, Lcom/google/android/gms/internal/ads/zzamt;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzamt;-><init>(Lcom/google/android/gms/internal/ads/zzazq;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzams;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/ads/zzams;-><init>(Lcom/google/android/gms/internal/ads/zzazq;)V

    .line 12
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzazx;->zza(Lcom/google/android/gms/internal/ads/zzazu;Lcom/google/android/gms/internal/ads/zzazs;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzame;Lcom/google/android/gms/internal/ads/zzamf;)Lcom/google/android/gms/internal/ads/zzamx;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzame<",
            "TI;>;",
            "Lcom/google/android/gms/internal/ads/zzamf<",
            "TO;>;)",
            "Lcom/google/android/gms/internal/ads/zzamx<",
            "TI;TO;>;"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzamq;->zzub()V

    .line 15
    new-instance v0, Lcom/google/android/gms/internal/ads/zzamx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamq;->zzdkk:Lcom/google/android/gms/internal/ads/zzdyz;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzamx;-><init>(Lcom/google/android/gms/internal/ads/zzdyz;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzame;Lcom/google/android/gms/internal/ads/zzamf;)V

    return-object v0
.end method

.method public final zzc(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzahv<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzalz;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzamq;->zzub()V

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamq;->zzdkk:Lcom/google/android/gms/internal/ads/zzdyz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzamv;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzamv;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahv;)V

    .line 18
    sget-object p1, Lcom/google/android/gms/internal/ads/zzazj;->zzegu:Lcom/google/android/gms/internal/ads/zzdzc;

    .line 19
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdyr;->zzb(Lcom/google/android/gms/internal/ads/zzdyz;Lcom/google/android/gms/internal/ads/zzdyb;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamq;->zzdkk:Lcom/google/android/gms/internal/ads/zzdyz;

    return-void
.end method

.method public final zzd(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzahv<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzalz;",
            ">;)V"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamq;->zzdkk:Lcom/google/android/gms/internal/ads/zzdyz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzamu;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzamu;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahv;)V

    .line 22
    sget-object p1, Lcom/google/android/gms/internal/ads/zzazj;->zzegu:Lcom/google/android/gms/internal/ads/zzdzc;

    .line 23
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdyr;->zzb(Lcom/google/android/gms/internal/ads/zzdyz;Lcom/google/android/gms/internal/ads/zzdvm;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamq;->zzdkk:Lcom/google/android/gms/internal/ads/zzdyz;

    return-void
.end method
