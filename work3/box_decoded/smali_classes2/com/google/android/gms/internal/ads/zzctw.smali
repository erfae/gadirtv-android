.class public final Lcom/google/android/gms/internal/ads/zzctw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcrh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcrh<",
        "Lcom/google/android/gms/internal/ads/zzcbt;",
        "Lcom/google/android/gms/internal/ads/zzdoe;",
        "Lcom/google/android/gms/internal/ads/zzcst;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final zzfqx:Ljava/util/concurrent/Executor;

.field private final zzgsh:Lcom/google/android/gms/internal/ads/zzcat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcat;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctw;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzctw;->zzgsh:Lcom/google/android/gms/internal/ads/zzcat;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzctw;->zzfqx:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzdnj;I)Z
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdnj;->zzhij:Lcom/google/android/gms/internal/ads/zzdne;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdne;->zzfvl:Lcom/google/android/gms/internal/ads/zzdnn;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdnn;->zzhiq:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
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

    .line 6
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzcrb;->zzdmo:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdoe;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzctw;->context:Landroid/content/Context;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdnj;->zzhij:Lcom/google/android/gms/internal/ads/zzdne;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdne;->zzfvl:Lcom/google/android/gms/internal/ads/zzdnn;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzdnn;->zzhio:Lcom/google/android/gms/internal/ads/zzvk;

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzdmu;->zzhha:Lorg/json/JSONObject;

    .line 7
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzdmu;->zzhgx:Lcom/google/android/gms/internal/ads/zzdnb;

    .line 8
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzbk;->zza(Lcom/google/android/gms/ads/internal/util/zzbl;)Ljava/lang/String;

    move-result-object v5

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzcrb;->zzgqp:Lcom/google/android/gms/internal/ads/zzbtc;

    move-object v6, p2

    check-cast v6, Lcom/google/android/gms/internal/ads/zzano;

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzdnj;->zzhij:Lcom/google/android/gms/internal/ads/zzdne;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzdne;->zzfvl:Lcom/google/android/gms/internal/ads/zzdnn;

    iget-object v7, p2, Lcom/google/android/gms/internal/ads/zzdnn;->zzdnh:Lcom/google/android/gms/internal/ads/zzadz;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdnj;->zzhij:Lcom/google/android/gms/internal/ads/zzdne;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdne;->zzfvl:Lcom/google/android/gms/internal/ads/zzdnn;

    iget-object v8, p1, Lcom/google/android/gms/internal/ads/zzdnn;->zzhiq:Ljava/util/ArrayList;

    .line 9
    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzdoe;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvk;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzano;Lcom/google/android/gms/internal/ads/zzadz;Ljava/util/List;)V

    return-void
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/ads/zzdnj;Lcom/google/android/gms/internal/ads/zzdmu;Lcom/google/android/gms/internal/ads/zzcrb;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdnr;,
            Lcom/google/android/gms/internal/ads/zzcuq;
        }
    .end annotation

    .line 13
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzcrb;->zzdmo:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdoe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoe;->zzue()Lcom/google/android/gms/internal/ads/zzanv;

    move-result-object v0

    .line 14
    iget-object v1, p3, Lcom/google/android/gms/internal/ads/zzcrb;->zzdmo:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdoe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdoe;->zzuf()Lcom/google/android/gms/internal/ads/zzanw;

    move-result-object v1

    .line 15
    iget-object v2, p3, Lcom/google/android/gms/internal/ads/zzcrb;->zzdmo:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdoe;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdoe;->zzuk()Lcom/google/android/gms/internal/ads/zzaob;

    move-result-object v2

    const/4 v3, 0x6

    if-eqz v2, :cond_0

    .line 16
    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ads/zzctw;->zza(Lcom/google/android/gms/internal/ads/zzdnj;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 17
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcce;->zzb(Lcom/google/android/gms/internal/ads/zzaob;)Lcom/google/android/gms/internal/ads/zzcce;

    move-result-object v3

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 19
    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ads/zzctw;->zza(Lcom/google/android/gms/internal/ads/zzdnj;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 20
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcce;->zzb(Lcom/google/android/gms/internal/ads/zzanv;)Lcom/google/android/gms/internal/ads/zzcce;

    move-result-object v3

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const/4 v4, 0x2

    .line 22
    invoke-static {p1, v4}, Lcom/google/android/gms/internal/ads/zzctw;->zza(Lcom/google/android/gms/internal/ads/zzdnj;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 23
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcce;->zza(Lcom/google/android/gms/internal/ads/zzanv;)Lcom/google/android/gms/internal/ads/zzcce;

    move-result-object v3

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 24
    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ads/zzctw;->zza(Lcom/google/android/gms/internal/ads/zzdnj;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 25
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcce;->zzb(Lcom/google/android/gms/internal/ads/zzanw;)Lcom/google/android/gms/internal/ads/zzcce;

    move-result-object v3

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_5

    const/4 v3, 0x1

    .line 26
    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ads/zzctw;->zza(Lcom/google/android/gms/internal/ads/zzdnj;I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 27
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcce;->zza(Lcom/google/android/gms/internal/ads/zzanw;)Lcom/google/android/gms/internal/ads/zzcce;

    move-result-object v3

    .line 29
    :goto_0
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzdnj;->zzhij:Lcom/google/android/gms/internal/ads/zzdne;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzdne;->zzfvl:Lcom/google/android/gms/internal/ads/zzdnn;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzdnn;->zzhiq:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcce;->zzanc()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 31
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 33
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzctw;->zzgsh:Lcom/google/android/gms/internal/ads/zzcat;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzbos;

    iget-object v6, p3, Lcom/google/android/gms/internal/ads/zzcrb;->zzchy:Ljava/lang/String;

    invoke-direct {v5, p1, p2, v6}, Lcom/google/android/gms/internal/ads/zzbos;-><init>(Lcom/google/android/gms/internal/ads/zzdnj;Lcom/google/android/gms/internal/ads/zzdmu;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzccq;

    invoke-direct {p1, v3}, Lcom/google/android/gms/internal/ads/zzccq;-><init>(Lcom/google/android/gms/internal/ads/zzcce;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzceb;

    invoke-direct {p2, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzceb;-><init>(Lcom/google/android/gms/internal/ads/zzanw;Lcom/google/android/gms/internal/ads/zzanv;Lcom/google/android/gms/internal/ads/zzaob;)V

    .line 34
    invoke-virtual {v4, v5, p1, p2}, Lcom/google/android/gms/internal/ads/zzcat;->zza(Lcom/google/android/gms/internal/ads/zzbos;Lcom/google/android/gms/internal/ads/zzccq;Lcom/google/android/gms/internal/ads/zzceb;)Lcom/google/android/gms/internal/ads/zzccf;

    move-result-object p1

    .line 35
    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzcrb;->zzgqp:Lcom/google/android/gms/internal/ads/zzbtc;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzcst;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzboe;->zzafv()Lcom/google/android/gms/internal/ads/zzcwb;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzcst;->zzb(Lcom/google/android/gms/internal/ads/zzano;)V

    .line 36
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzboe;->zzafq()Lcom/google/android/gms/internal/ads/zzbso;

    move-result-object p2

    .line 37
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbjt;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzcrb;->zzdmo:Ljava/lang/Object;

    check-cast p3, Lcom/google/android/gms/internal/ads/zzdoe;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/ads/zzbjt;-><init>(Lcom/google/android/gms/internal/ads/zzdoe;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzctw;->zzfqx:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, v0, p3}, Lcom/google/android/gms/internal/ads/zzbwk;->zza(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 38
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzccd;->zzafx()Lcom/google/android/gms/internal/ads/zzcbt;

    move-result-object p1

    return-object p1

    .line 32
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcuq;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzdok;->zzhjl:Lcom/google/android/gms/internal/ads/zzdok;

    const-string p3, "No corresponding native ad listener"

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcuq;-><init>(Lcom/google/android/gms/internal/ads/zzdok;Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcuq;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzdok;->zzhjl:Lcom/google/android/gms/internal/ads/zzdok;

    const-string p3, "No native ad mappers"

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcuq;-><init>(Lcom/google/android/gms/internal/ads/zzdok;Ljava/lang/String;)V

    throw p1
.end method
