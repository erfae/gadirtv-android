.class public final Lcom/google/android/gms/internal/ads/zzcve;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcqz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcqz<",
        "Lcom/google/android/gms/internal/ads/zzchc;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final zzbos:Lcom/google/android/gms/internal/ads/zzazh;

.field private final zzfqx:Ljava/util/concurrent/Executor;

.field private final zzfvl:Lcom/google/android/gms/internal/ads/zzdnn;

.field private final zzgey:Lcom/google/android/gms/internal/ads/zzchp;

.field private final zzgth:Lcom/google/android/gms/internal/ads/zzchf;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazh;Lcom/google/android/gms/internal/ads/zzdnn;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzchf;Lcom/google/android/gms/internal/ads/zzchp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcve;->context:Landroid/content/Context;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcve;->zzfvl:Lcom/google/android/gms/internal/ads/zzdnn;

    .line 4
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcve;->zzgth:Lcom/google/android/gms/internal/ads/zzchf;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcve;->zzfqx:Ljava/util/concurrent/Executor;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcve;->zzbos:Lcom/google/android/gms/internal/ads/zzazh;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcve;->zzgey:Lcom/google/android/gms/internal/ads/zzchp;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzdnj;Lcom/google/android/gms/internal/ads/zzdmu;)Z
    .locals 0

    .line 9
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzdmu;->zzhgx:Lcom/google/android/gms/internal/ads/zzdnb;

    if-eqz p1, :cond_0

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzdmu;->zzhgx:Lcom/google/android/gms/internal/ads/zzdnb;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdnb;->zzdrp:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzdnj;Lcom/google/android/gms/internal/ads/zzdmu;)Lcom/google/android/gms/internal/ads/zzdyz;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdnj;",
            "Lcom/google/android/gms/internal/ads/zzdmu;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdyz<",
            "Lcom/google/android/gms/internal/ads/zzchc;",
            ">;"
        }
    .end annotation

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcif;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcif;-><init>()V

    const/4 v1, 0x0

    .line 12
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdyr;->zzag(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcvd;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzcvd;-><init>(Lcom/google/android/gms/internal/ads/zzcve;Lcom/google/android/gms/internal/ads/zzdmu;Lcom/google/android/gms/internal/ads/zzdnj;Lcom/google/android/gms/internal/ads/zzcif;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcve;->zzfqx:Ljava/util/concurrent/Executor;

    .line 13
    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzdyr;->zzb(Lcom/google/android/gms/internal/ads/zzdyz;Lcom/google/android/gms/internal/ads/zzdyb;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    .line 14
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcvg;->zza(Lcom/google/android/gms/internal/ads/zzcif;)Ljava/lang/Runnable;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcve;->zzfqx:Ljava/util/concurrent/Executor;

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzdyz;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object p1
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/ads/zzdmu;Lcom/google/android/gms/internal/ads/zzdnj;Lcom/google/android/gms/internal/ads/zzcif;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdyz;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v1, p2

    .line 16
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzcve;->zzgey:Lcom/google/android/gms/internal/ads/zzchp;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzcve;->zzfvl:Lcom/google/android/gms/internal/ads/zzdnn;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzdnn;->zzbpe:Lcom/google/android/gms/internal/ads/zzvn;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzdnj;->zzhik:Lcom/google/android/gms/internal/ads/zzdnh;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzdnh;->zzerj:Lcom/google/android/gms/internal/ads/zzdmz;

    iget-boolean v5, v10, Lcom/google/android/gms/internal/ads/zzdmu;->zzerh:Z

    .line 17
    invoke-virtual {v2, v3, v10, v4, v5}, Lcom/google/android/gms/internal/ads/zzchp;->zza(Lcom/google/android/gms/internal/ads/zzvn;Lcom/google/android/gms/internal/ads/zzdmu;Lcom/google/android/gms/internal/ads/zzdmz;Z)Lcom/google/android/gms/internal/ads/zzbdv;

    move-result-object v11

    .line 18
    iget-boolean v2, v10, Lcom/google/android/gms/internal/ads/zzdmu;->zzdvo:Z

    invoke-interface {v11, v2}, Lcom/google/android/gms/internal/ads/zzbdv;->zzaw(Z)V

    .line 19
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzcve;->context:Landroid/content/Context;

    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzbdv;->getView()Landroid/view/View;

    move-result-object v3

    move-object/from16 v4, p3

    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzcif;->zzc(Landroid/content/Context;Landroid/view/View;)V

    .line 20
    new-instance v12, Lcom/google/android/gms/internal/ads/zzazq;

    invoke-direct {v12}, Lcom/google/android/gms/internal/ads/zzazq;-><init>()V

    .line 22
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzcve;->zzgth:Lcom/google/android/gms/internal/ads/zzchf;

    new-instance v14, Lcom/google/android/gms/internal/ads/zzbos;

    const/4 v15, 0x0

    invoke-direct {v14, v1, v10, v15}, Lcom/google/android/gms/internal/ads/zzbos;-><init>(Lcom/google/android/gms/internal/ads/zzdnj;Lcom/google/android/gms/internal/ads/zzdmu;Ljava/lang/String;)V

    new-instance v9, Lcom/google/android/gms/internal/ads/zzchd;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzcvk;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzcve;->context:Landroid/content/Context;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzcve;->zzgey:Lcom/google/android/gms/internal/ads/zzchp;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzcve;->zzfvl:Lcom/google/android/gms/internal/ads/zzdnn;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzcve;->zzbos:Lcom/google/android/gms/internal/ads/zzazh;

    const/16 v16, 0x0

    move-object v1, v8

    move-object/from16 v6, p1

    move-object v7, v12

    move-object v15, v8

    move-object v8, v11

    move-object v0, v9

    move-object/from16 v9, v16

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/zzcvk;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzchp;Lcom/google/android/gms/internal/ads/zzdnn;Lcom/google/android/gms/internal/ads/zzazh;Lcom/google/android/gms/internal/ads/zzdmu;Lcom/google/android/gms/internal/ads/zzdyz;Lcom/google/android/gms/internal/ads/zzbdv;Lcom/google/android/gms/internal/ads/zzcvh;)V

    invoke-direct {v0, v15, v11}, Lcom/google/android/gms/internal/ads/zzchd;-><init>(Lcom/google/android/gms/internal/ads/zzcaf;Lcom/google/android/gms/internal/ads/zzbdv;)V

    .line 23
    invoke-virtual {v13, v14, v0}, Lcom/google/android/gms/internal/ads/zzchf;->zza(Lcom/google/android/gms/internal/ads/zzbos;Lcom/google/android/gms/internal/ads/zzchd;)Lcom/google/android/gms/internal/ads/zzche;

    move-result-object v0

    .line 24
    invoke-virtual {v12, v0}, Lcom/google/android/gms/internal/ads/zzazq;->set(Ljava/lang/Object;)Z

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzche;->zzahr()Lcom/google/android/gms/internal/ads/zzbyi;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/google/android/gms/internal/ads/zzaig;->zza(Lcom/google/android/gms/internal/ads/zzbdv;Lcom/google/android/gms/internal/ads/zzaij;)V

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzboe;->zzaft()Lcom/google/android/gms/internal/ads/zzbsl;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcvf;

    invoke-direct {v2, v11}, Lcom/google/android/gms/internal/ads/zzcvf;-><init>(Lcom/google/android/gms/internal/ads/zzbdv;)V

    .line 28
    sget-object v3, Lcom/google/android/gms/internal/ads/zzazj;->zzegu:Lcom/google/android/gms/internal/ads/zzdzc;

    .line 29
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbwk;->zza(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzche;->zzagr()Lcom/google/android/gms/internal/ads/zzchr;

    move-result-object v1

    const/4 v2, 0x1

    .line 32
    invoke-virtual {v1, v11, v2}, Lcom/google/android/gms/internal/ads/zzchr;->zzb(Lcom/google/android/gms/internal/ads/zzbdv;Z)V

    .line 33
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabf;->zzcwz:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 34
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 35
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, v10, Lcom/google/android/gms/internal/ads/zzdmu;->zzerh:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 36
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdyr;->zzag(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object v1

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzche;->zzagr()Lcom/google/android/gms/internal/ads/zzchr;

    iget-object v1, v10, Lcom/google/android/gms/internal/ads/zzdmu;->zzhgx:Lcom/google/android/gms/internal/ads/zzdnb;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdnb;->zzdrn:Ljava/lang/String;

    iget-object v2, v10, Lcom/google/android/gms/internal/ads/zzdmu;->zzhgx:Lcom/google/android/gms/internal/ads/zzdnb;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzdnb;->zzdrp:Ljava/lang/String;

    .line 39
    invoke-static {v11, v1, v2}, Lcom/google/android/gms/internal/ads/zzchr;->zza(Lcom/google/android/gms/internal/ads/zzbdv;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object v1

    .line 40
    :goto_0
    new-instance v2, Lcom/google/android/gms/internal/ads/zzcvi;

    move-object/from16 v3, p0

    invoke-direct {v2, v3, v11, v10, v0}, Lcom/google/android/gms/internal/ads/zzcvi;-><init>(Lcom/google/android/gms/internal/ads/zzcve;Lcom/google/android/gms/internal/ads/zzbdv;Lcom/google/android/gms/internal/ads/zzdmu;Lcom/google/android/gms/internal/ads/zzche;)V

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzcve;->zzfqx:Ljava/util/concurrent/Executor;

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzdyr;->zzb(Lcom/google/android/gms/internal/ads/zzdyz;Lcom/google/android/gms/internal/ads/zzdvm;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object v0

    return-object v0
.end method
