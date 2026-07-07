.class final synthetic Lcom/google/android/gms/internal/ads/zzbfs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwf;


# instance fields
.field private final zzclq:Landroid/content/Context;

.field private final zzdgt:Ljava/lang/String;

.field private final zzeqg:Lcom/google/android/gms/internal/ads/zzbfn;

.field private final zzeqh:Z

.field private final zzeqi:Z

.field private final zzeqj:Lcom/google/android/gms/internal/ads/zzef;

.field private final zzeqk:Lcom/google/android/gms/internal/ads/zzacg;

.field private final zzeql:Lcom/google/android/gms/internal/ads/zzazh;

.field private final zzeqm:Lcom/google/android/gms/internal/ads/zzabs;

.field private final zzeqn:Lcom/google/android/gms/ads/internal/zzk;

.field private final zzeqo:Lcom/google/android/gms/ads/internal/zzb;

.field private final zzeqp:Lcom/google/android/gms/internal/ads/zzts;

.field private final zzeqq:Lcom/google/android/gms/internal/ads/zzsu;

.field private final zzeqr:Z

.field private final zzeqs:Lcom/google/android/gms/internal/ads/zzdmu;

.field private final zzeqt:Lcom/google/android/gms/internal/ads/zzdmz;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbfn;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzef;Lcom/google/android/gms/internal/ads/zzacg;Lcom/google/android/gms/internal/ads/zzazh;Lcom/google/android/gms/internal/ads/zzabs;Lcom/google/android/gms/ads/internal/zzk;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzts;Lcom/google/android/gms/internal/ads/zzsu;ZLcom/google/android/gms/internal/ads/zzdmu;Lcom/google/android/gms/internal/ads/zzdmz;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbfs;->zzclq:Landroid/content/Context;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbfs;->zzeqg:Lcom/google/android/gms/internal/ads/zzbfn;

    move-object v1, p3

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbfs;->zzdgt:Ljava/lang/String;

    move v1, p4

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbfs;->zzeqh:Z

    move v1, p5

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbfs;->zzeqi:Z

    move-object v1, p6

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbfs;->zzeqj:Lcom/google/android/gms/internal/ads/zzef;

    move-object v1, p7

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbfs;->zzeqk:Lcom/google/android/gms/internal/ads/zzacg;

    move-object v1, p8

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbfs;->zzeql:Lcom/google/android/gms/internal/ads/zzazh;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbfs;->zzeqm:Lcom/google/android/gms/internal/ads/zzabs;

    move-object v1, p10

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbfs;->zzeqn:Lcom/google/android/gms/ads/internal/zzk;

    move-object v1, p11

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbfs;->zzeqo:Lcom/google/android/gms/ads/internal/zzb;

    move-object v1, p12

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbfs;->zzeqp:Lcom/google/android/gms/internal/ads/zzts;

    move-object v1, p13

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbfs;->zzeqq:Lcom/google/android/gms/internal/ads/zzsu;

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbfs;->zzeqr:Z

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbfs;->zzeqs:Lcom/google/android/gms/internal/ads/zzdmu;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbfs;->zzeqt:Lcom/google/android/gms/internal/ads/zzdmz;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbfs;->zzclq:Landroid/content/Context;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzbfs;->zzeqg:Lcom/google/android/gms/internal/ads/zzbfn;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzbfs;->zzdgt:Ljava/lang/String;

    iget-boolean v7, v0, Lcom/google/android/gms/internal/ads/zzbfs;->zzeqh:Z

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzbfs;->zzeqi:Z

    move v8, v2

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzbfs;->zzeqj:Lcom/google/android/gms/internal/ads/zzef;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzbfs;->zzeqk:Lcom/google/android/gms/internal/ads/zzacg;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzbfs;->zzeql:Lcom/google/android/gms/internal/ads/zzazh;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzbfs;->zzeqm:Lcom/google/android/gms/internal/ads/zzabs;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzbfs;->zzeqn:Lcom/google/android/gms/ads/internal/zzk;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzbfs;->zzeqo:Lcom/google/android/gms/ads/internal/zzb;

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzbfs;->zzeqp:Lcom/google/android/gms/internal/ads/zzts;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbfs;->zzeqq:Lcom/google/android/gms/internal/ads/zzsu;

    move-object/from16 v16, v3

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzbfs;->zzeqr:Z

    move/from16 v17, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbfs;->zzeqs:Lcom/google/android/gms/internal/ads/zzdmu;

    move-object/from16 v18, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbfs;->zzeqt:Lcom/google/android/gms/internal/ads/zzdmz;

    move-object/from16 v19, v3

    .line 2
    new-instance v3, Lcom/google/android/gms/internal/ads/zzbfm;

    move-object v4, v3

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzbfm;-><init>()V

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbfk;

    move-object/from16 v20, v3

    move-object v3, v0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbfk;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbfv;

    move v1, v2

    move-object v2, v0

    invoke-direct/range {v2 .. v19}, Lcom/google/android/gms/internal/ads/zzbfv;-><init>(Lcom/google/android/gms/internal/ads/zzbfk;Lcom/google/android/gms/internal/ads/zzbfm;Lcom/google/android/gms/internal/ads/zzbfn;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzef;Lcom/google/android/gms/internal/ads/zzacg;Lcom/google/android/gms/internal/ads/zzazh;Lcom/google/android/gms/internal/ads/zzabs;Lcom/google/android/gms/ads/internal/zzk;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzts;Lcom/google/android/gms/internal/ads/zzsu;ZLcom/google/android/gms/internal/ads/zzdmu;Lcom/google/android/gms/internal/ads/zzdmz;)V

    .line 5
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbeg;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzbeg;-><init>(Lcom/google/android/gms/internal/ads/zzbdv;)V

    .line 6
    new-instance v3, Lcom/google/android/gms/internal/ads/zzbdn;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzbdn;-><init>(Lcom/google/android/gms/internal/ads/zzbdv;)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzbfv;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    move-object/from16 v0, v20

    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbfm;->zza(Lcom/google/android/gms/internal/ads/zzbdv;Z)V

    return-object v2
.end method
