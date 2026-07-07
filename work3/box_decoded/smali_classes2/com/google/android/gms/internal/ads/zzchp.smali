.class public final Lcom/google/android/gms/internal/ads/zzchp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# instance fields
.field private final context:Landroid/content/Context;

.field private final zzbpd:Lcom/google/android/gms/internal/ads/zzazh;

.field private final zzbpq:Lcom/google/android/gms/internal/ads/zzbed;

.field private final zzeph:Lcom/google/android/gms/internal/ads/zzts;

.field private final zzerb:Lcom/google/android/gms/internal/ads/zzef;

.field private final zzerc:Lcom/google/android/gms/internal/ads/zzacg;

.field private final zzere:Lcom/google/android/gms/ads/internal/zzb;

.field private final zzerg:Lcom/google/android/gms/internal/ads/zzsu;

.field private final zzgij:Lcom/google/android/gms/internal/ads/zzbua;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbed;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzef;Lcom/google/android/gms/internal/ads/zzacg;Lcom/google/android/gms/internal/ads/zzazh;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzts;Lcom/google/android/gms/internal/ads/zzbua;Lcom/google/android/gms/internal/ads/zzbyw;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchp;->zzbpq:Lcom/google/android/gms/internal/ads/zzbed;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzchp;->context:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzchp;->zzerb:Lcom/google/android/gms/internal/ads/zzef;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzchp;->zzerc:Lcom/google/android/gms/internal/ads/zzacg;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzchp;->zzbpd:Lcom/google/android/gms/internal/ads/zzazh;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzchp;->zzere:Lcom/google/android/gms/ads/internal/zzb;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzchp;->zzeph:Lcom/google/android/gms/internal/ads/zzts;

    .line 9
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzchp;->zzgij:Lcom/google/android/gms/internal/ads/zzbua;

    .line 10
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzchp;->zzerg:Lcom/google/android/gms/internal/ads/zzsu;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzchp;)Lcom/google/android/gms/internal/ads/zzbua;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzchp;->zzgij:Lcom/google/android/gms/internal/ads/zzbua;

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzvn;Lcom/google/android/gms/internal/ads/zzdmu;Lcom/google/android/gms/internal/ads/zzdmz;Z)Lcom/google/android/gms/internal/ads/zzbdv;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbeh;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 13
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzchp;->context:Landroid/content/Context;

    .line 14
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzbfn;->zzb(Lcom/google/android/gms/internal/ads/zzvn;)Lcom/google/android/gms/internal/ads/zzbfn;

    move-result-object v2

    move-object/from16 v3, p1

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzvn;->zzacv:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzchp;->zzerb:Lcom/google/android/gms/internal/ads/zzef;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzchp;->zzerc:Lcom/google/android/gms/internal/ads/zzacg;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzchp;->zzbpd:Lcom/google/android/gms/internal/ads/zzazh;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzchs;

    invoke-direct {v10, v0}, Lcom/google/android/gms/internal/ads/zzchs;-><init>(Lcom/google/android/gms/internal/ads/zzchp;)V

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzchp;->zzere:Lcom/google/android/gms/ads/internal/zzb;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzchp;->zzeph:Lcom/google/android/gms/internal/ads/zzts;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzchp;->zzerg:Lcom/google/android/gms/internal/ads/zzsu;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    move/from16 v14, p4

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    .line 15
    invoke-static/range {v1 .. v16}, Lcom/google/android/gms/internal/ads/zzbed;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbfn;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzef;Lcom/google/android/gms/internal/ads/zzacg;Lcom/google/android/gms/internal/ads/zzazh;Lcom/google/android/gms/internal/ads/zzabs;Lcom/google/android/gms/ads/internal/zzk;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzts;Lcom/google/android/gms/internal/ads/zzsu;ZLcom/google/android/gms/internal/ads/zzdmu;Lcom/google/android/gms/internal/ads/zzdmz;)Lcom/google/android/gms/internal/ads/zzbdv;

    move-result-object v1

    return-object v1
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzvn;)Lcom/google/android/gms/internal/ads/zzbdv;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbeh;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, p1, v0, v0, v1}, Lcom/google/android/gms/internal/ads/zzchp;->zza(Lcom/google/android/gms/internal/ads/zzvn;Lcom/google/android/gms/internal/ads/zzdmu;Lcom/google/android/gms/internal/ads/zzdmz;Z)Lcom/google/android/gms/internal/ads/zzbdv;

    move-result-object p1

    return-object p1
.end method
