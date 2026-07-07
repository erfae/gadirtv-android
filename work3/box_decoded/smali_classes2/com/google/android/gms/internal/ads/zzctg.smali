.class public final Lcom/google/android/gms/internal/ads/zzctg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcrh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcrh<",
        "Lcom/google/android/gms/internal/ads/zzbyx;",
        "Lcom/google/android/gms/internal/ads/zzdoe;",
        "Lcom/google/android/gms/internal/ads/zzcst;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final zzbos:Lcom/google/android/gms/internal/ads/zzazh;

.field private final zzfqx:Ljava/util/concurrent/Executor;

.field private final zzgrt:Lcom/google/android/gms/internal/ads/zzbzx;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazh;Lcom/google/android/gms/internal/ads/zzbzx;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctg;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzctg;->zzbos:Lcom/google/android/gms/internal/ads/zzazh;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzctg;->zzgrt:Lcom/google/android/gms/internal/ads/zzbzx;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzctg;->zzfqx:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzdnj;Lcom/google/android/gms/internal/ads/zzdmu;Lcom/google/android/gms/internal/ads/zzcrb;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdnj;",
            "Lcom/google/android/gms/internal/ads/zzdmu;",
            "Lcom/google/android/gms/internal/ads/zzcrb<",
            "Lcom/google/android/gms/internal/ads/zzdoe;",
            "Lcom/google/android/gms/internal/ads/zzcst;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdnr;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctg;->zzbos:Lcom/google/android/gms/internal/ads/zzazh;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzazh;->zzegm:I

    const v1, 0x3e8fa0

    if-ge v0, v1, :cond_0

    .line 8
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzcrb;->zzdmo:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdoe;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzctg;->context:Landroid/content/Context;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdnj;->zzhij:Lcom/google/android/gms/internal/ads/zzdne;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdne;->zzfvl:Lcom/google/android/gms/internal/ads/zzdnn;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdnn;->zzhio:Lcom/google/android/gms/internal/ads/zzvk;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzdmu;->zzhha:Lorg/json/JSONObject;

    .line 9
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzcrb;->zzgqp:Lcom/google/android/gms/internal/ads/zzbtc;

    check-cast p3, Lcom/google/android/gms/internal/ads/zzano;

    .line 10
    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdoe;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvk;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzano;)V

    return-void

    .line 11
    :cond_0
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzcrb;->zzdmo:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdoe;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzctg;->context:Landroid/content/Context;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdnj;->zzhij:Lcom/google/android/gms/internal/ads/zzdne;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdne;->zzfvl:Lcom/google/android/gms/internal/ads/zzdnn;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzdnn;->zzhio:Lcom/google/android/gms/internal/ads/zzvk;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzdmu;->zzhha:Lorg/json/JSONObject;

    .line 12
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzdmu;->zzhgx:Lcom/google/android/gms/internal/ads/zzdnb;

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzbk;->zza(Lcom/google/android/gms/ads/internal/util/zzbl;)Ljava/lang/String;

    move-result-object v5

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/zzcrb;->zzgqp:Lcom/google/android/gms/internal/ads/zzbtc;

    move-object v6, p1

    check-cast v6, Lcom/google/android/gms/internal/ads/zzano;

    .line 14
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzdoe;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvk;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzano;)V

    return-void
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/ads/zzdnj;Lcom/google/android/gms/internal/ads/zzdmu;Lcom/google/android/gms/internal/ads/zzcrb;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdnr;,
            Lcom/google/android/gms/internal/ads/zzcuq;
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctg;->zzgrt:Lcom/google/android/gms/internal/ads/zzbzx;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbos;

    iget-object v2, p3, Lcom/google/android/gms/internal/ads/zzcrb;->zzchy:Ljava/lang/String;

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzbos;-><init>(Lcom/google/android/gms/internal/ads/zzdnj;Lcom/google/android/gms/internal/ads/zzdmu;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbzc;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzctf;

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/zzctf;-><init>(Lcom/google/android/gms/internal/ads/zzcrb;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzbzc;-><init>(Lcom/google/android/gms/internal/ads/zzcaf;)V

    .line 18
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbzx;->zza(Lcom/google/android/gms/internal/ads/zzbos;Lcom/google/android/gms/internal/ads/zzbzc;)Lcom/google/android/gms/internal/ads/zzbyz;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzboe;->zzafq()Lcom/google/android/gms/internal/ads/zzbso;

    move-result-object p2

    .line 20
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbjt;

    iget-object v1, p3, Lcom/google/android/gms/internal/ads/zzcrb;->zzdmo:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdoe;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbjt;-><init>(Lcom/google/android/gms/internal/ads/zzdoe;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzctg;->zzfqx:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzbwk;->zza(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 21
    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzcrb;->zzgqp:Lcom/google/android/gms/internal/ads/zzbtc;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzcst;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzboe;->zzafv()Lcom/google/android/gms/internal/ads/zzcwb;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzcst;->zzb(Lcom/google/android/gms/internal/ads/zzano;)V

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbyz;->zzahh()Lcom/google/android/gms/internal/ads/zzbyx;

    move-result-object p1

    return-object p1
.end method
