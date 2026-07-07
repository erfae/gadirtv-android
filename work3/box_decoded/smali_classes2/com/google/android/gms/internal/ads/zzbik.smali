.class final Lcom/google/android/gms/internal/ads/zzbik;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcyy;


# instance fields
.field private zzexq:Lcom/google/android/gms/internal/ads/zzbrg;

.field private final synthetic zzexw:Lcom/google/android/gms/internal/ads/zzbhg;

.field private zzfod:Lcom/google/android/gms/internal/ads/zzczo;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbhg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbik;->zzexw:Lcom/google/android/gms/internal/ads/zzbhg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbhg;Lcom/google/android/gms/internal/ads/zzbhj;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbik;-><init>(Lcom/google/android/gms/internal/ads/zzbhg;)V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzczo;)Lcom/google/android/gms/internal/ads/zzcyy;
    .locals 0

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzepl;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzczo;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbik;->zzfod:Lcom/google/android/gms/internal/ads/zzczo;

    return-object p0
.end method

.method public final zzahp()Lcom/google/android/gms/internal/ads/zzcyv;
    .locals 12

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbik;->zzexq:Lcom/google/android/gms/internal/ads/zzbrg;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbrg;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzepl;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbik;->zzfod:Lcom/google/android/gms/internal/ads/zzczo;

    const-class v1, Lcom/google/android/gms/internal/ads/zzczo;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzepl;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbin;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbik;->zzexw:Lcom/google/android/gms/internal/ads/zzbhg;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbik;->zzfod:Lcom/google/android/gms/internal/ads/zzczo;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzbpf;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzbpf;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzcld;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzcld;-><init>()V

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzbik;->zzexq:Lcom/google/android/gms/internal/ads/zzbrg;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzdot;

    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zzdot;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/google/android/gms/internal/ads/zzbin;-><init>(Lcom/google/android/gms/internal/ads/zzbhg;Lcom/google/android/gms/internal/ads/zzczo;Lcom/google/android/gms/internal/ads/zzbpf;Lcom/google/android/gms/internal/ads/zzcld;Lcom/google/android/gms/internal/ads/zzbrg;Lcom/google/android/gms/internal/ads/zzdot;Lcom/google/android/gms/internal/ads/zzdkt;Lcom/google/android/gms/internal/ads/zzdjv;Lcom/google/android/gms/internal/ads/zzbhj;)V

    return-object v0
.end method

.method public final synthetic zzg(Lcom/google/android/gms/internal/ads/zzbrg;)Lcom/google/android/gms/internal/ads/zzcyy;
    .locals 0

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzepl;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbrg;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbik;->zzexq:Lcom/google/android/gms/internal/ads/zzbrg;

    return-object p0
.end method

.method public final synthetic zzg(Lcom/google/android/gms/internal/ads/zzbwp;)Lcom/google/android/gms/internal/ads/zzcyy;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzepl;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
