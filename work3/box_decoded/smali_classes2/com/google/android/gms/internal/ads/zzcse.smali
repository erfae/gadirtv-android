.class public final Lcom/google/android/gms/internal/ads/zzcse;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcrh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcrh<",
        "Lcom/google/android/gms/internal/ads/zzbme;",
        "Lcom/google/android/gms/internal/ads/zzdoe;",
        "Lcom/google/android/gms/internal/ads/zzcst;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final zzbos:Lcom/google/android/gms/internal/ads/zzazh;

.field private final zzfqx:Ljava/util/concurrent/Executor;

.field private final zzgrj:Lcom/google/android/gms/internal/ads/zzbna;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazh;Lcom/google/android/gms/internal/ads/zzbna;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcse;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcse;->zzbos:Lcom/google/android/gms/internal/ads/zzazh;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcse;->zzgrj:Lcom/google/android/gms/internal/ads/zzbna;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcse;->zzfqx:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzdnj;Lcom/google/android/gms/internal/ads/zzdmu;Lcom/google/android/gms/internal/ads/zzcrb;)V
    .locals 9
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
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdnj;->zzhij:Lcom/google/android/gms/internal/ads/zzdne;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdne;->zzfvl:Lcom/google/android/gms/internal/ads/zzdnn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdnn;->zzbpe:Lcom/google/android/gms/internal/ads/zzvn;

    .line 8
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzvn;->zzchw:Z

    if-eqz v1, :cond_0

    .line 9
    new-instance v1, Lcom/google/android/gms/internal/ads/zzvn;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcse;->context:Landroid/content/Context;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzvn;->width:I

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzvn;->height:I

    .line 10
    invoke-static {v3, v0}, Lcom/google/android/gms/ads/zzb;->zza(II)Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzvn;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcse;->context:Landroid/content/Context;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzdmu;->zzhgz:Ljava/util/List;

    .line 12
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdns;->zzb(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzvn;

    move-result-object v1

    :goto_0
    move-object v4, v1

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcse;->zzbos:Lcom/google/android/gms/internal/ads/zzazh;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzazh;->zzegm:I

    const v1, 0x3e8fa0

    if-ge v0, v1, :cond_1

    .line 14
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzcrb;->zzdmo:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdoe;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcse;->context:Landroid/content/Context;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdnj;->zzhij:Lcom/google/android/gms/internal/ads/zzdne;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdne;->zzfvl:Lcom/google/android/gms/internal/ads/zzdnn;

    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzdnn;->zzhio:Lcom/google/android/gms/internal/ads/zzvk;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzdmu;->zzhha:Lorg/json/JSONObject;

    .line 15
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/zzcrb;->zzgqp:Lcom/google/android/gms/internal/ads/zzbtc;

    move-object v7, p1

    check-cast v7, Lcom/google/android/gms/internal/ads/zzano;

    .line 16
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzdoe;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvn;Lcom/google/android/gms/internal/ads/zzvk;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzano;)V

    return-void

    .line 17
    :cond_1
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzcrb;->zzdmo:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdoe;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcse;->context:Landroid/content/Context;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdnj;->zzhij:Lcom/google/android/gms/internal/ads/zzdne;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdne;->zzfvl:Lcom/google/android/gms/internal/ads/zzdnn;

    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzdnn;->zzhio:Lcom/google/android/gms/internal/ads/zzvk;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzdmu;->zzhha:Lorg/json/JSONObject;

    .line 18
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzdmu;->zzhgx:Lcom/google/android/gms/internal/ads/zzdnb;

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzbk;->zza(Lcom/google/android/gms/ads/internal/util/zzbl;)Ljava/lang/String;

    move-result-object v7

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/zzcrb;->zzgqp:Lcom/google/android/gms/internal/ads/zzbtc;

    move-object v8, p1

    check-cast v8, Lcom/google/android/gms/internal/ads/zzano;

    .line 20
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzdoe;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvn;Lcom/google/android/gms/internal/ads/zzvk;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzano;)V

    return-void
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/ads/zzdnj;Lcom/google/android/gms/internal/ads/zzdmu;Lcom/google/android/gms/internal/ads/zzcrb;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdnr;,
            Lcom/google/android/gms/internal/ads/zzcuq;
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcse;->zzgrj:Lcom/google/android/gms/internal/ads/zzbna;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbos;

    iget-object v2, p3, Lcom/google/android/gms/internal/ads/zzcrb;->zzchy:Ljava/lang/String;

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzbos;-><init>(Lcom/google/android/gms/internal/ads/zzdnj;Lcom/google/android/gms/internal/ads/zzdmu;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbmh;

    iget-object v2, p3, Lcom/google/android/gms/internal/ads/zzcrb;->zzdmo:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdoe;

    .line 24
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdoe;->getView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p3, Lcom/google/android/gms/internal/ads/zzcrb;->zzdmo:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzdoe;

    .line 25
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzcsd;->zza(Lcom/google/android/gms/internal/ads/zzdoe;)Lcom/google/android/gms/internal/ads/zzbnz;

    move-result-object v3

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzdmu;->zzhgz:Ljava/util/List;

    const/4 v4, 0x0

    .line 26
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzdmx;

    const/4 v4, 0x0

    invoke-direct {p1, v2, v4, v3, p2}, Lcom/google/android/gms/internal/ads/zzbmh;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzbdv;Lcom/google/android/gms/internal/ads/zzbnz;Lcom/google/android/gms/internal/ads/zzdmx;)V

    .line 27
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbna;->zza(Lcom/google/android/gms/internal/ads/zzbos;Lcom/google/android/gms/internal/ads/zzbmh;)Lcom/google/android/gms/internal/ads/zzbmd;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbmd;->zzahd()Lcom/google/android/gms/internal/ads/zzbxx;

    move-result-object p2

    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzcrb;->zzdmo:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdoe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoe;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzbxx;->zzv(Landroid/view/View;)V

    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzboe;->zzafq()Lcom/google/android/gms/internal/ads/zzbso;

    move-result-object p2

    .line 30
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbjt;

    iget-object v1, p3, Lcom/google/android/gms/internal/ads/zzcrb;->zzdmo:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdoe;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbjt;-><init>(Lcom/google/android/gms/internal/ads/zzdoe;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcse;->zzfqx:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzbwk;->zza(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 31
    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzcrb;->zzgqp:Lcom/google/android/gms/internal/ads/zzbtc;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzcst;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzboe;->zzafv()Lcom/google/android/gms/internal/ads/zzcwb;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzcst;->zzb(Lcom/google/android/gms/internal/ads/zzano;)V

    .line 32
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbmd;->zzahc()Lcom/google/android/gms/internal/ads/zzbme;

    move-result-object p1

    return-object p1
.end method
