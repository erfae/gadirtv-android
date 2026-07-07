.class final synthetic Lcom/google/android/gms/internal/ads/zzbef;
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

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbef;->zzclq:Landroid/content/Context;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbef;->zzeqg:Lcom/google/android/gms/internal/ads/zzbfn;

    move-object v1, p3

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbef;->zzdgt:Ljava/lang/String;

    move v1, p4

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbef;->zzeqh:Z

    move v1, p5

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbef;->zzeqi:Z

    move-object v1, p6

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbef;->zzeqj:Lcom/google/android/gms/internal/ads/zzef;

    move-object v1, p7

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbef;->zzeqk:Lcom/google/android/gms/internal/ads/zzacg;

    move-object v1, p8

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbef;->zzeql:Lcom/google/android/gms/internal/ads/zzazh;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbef;->zzeqm:Lcom/google/android/gms/internal/ads/zzabs;

    move-object v1, p10

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbef;->zzeqn:Lcom/google/android/gms/ads/internal/zzk;

    move-object v1, p11

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbef;->zzeqo:Lcom/google/android/gms/ads/internal/zzb;

    move-object v1, p12

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbef;->zzeqp:Lcom/google/android/gms/internal/ads/zzts;

    move-object v1, p13

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbef;->zzeqq:Lcom/google/android/gms/internal/ads/zzsu;

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbef;->zzeqr:Z

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbef;->zzeqs:Lcom/google/android/gms/internal/ads/zzdmu;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbef;->zzeqt:Lcom/google/android/gms/internal/ads/zzdmz;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbef;->zzclq:Landroid/content/Context;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbef;->zzeqg:Lcom/google/android/gms/internal/ads/zzbfn;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbef;->zzdgt:Ljava/lang/String;

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzbef;->zzeqh:Z

    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/zzbef;->zzeqi:Z

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzbef;->zzeqj:Lcom/google/android/gms/internal/ads/zzef;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzbef;->zzeqk:Lcom/google/android/gms/internal/ads/zzacg;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzbef;->zzeql:Lcom/google/android/gms/internal/ads/zzazh;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzbef;->zzeqn:Lcom/google/android/gms/ads/internal/zzk;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzbef;->zzeqo:Lcom/google/android/gms/ads/internal/zzb;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzbef;->zzeqp:Lcom/google/android/gms/internal/ads/zzts;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzbef;->zzeqq:Lcom/google/android/gms/internal/ads/zzsu;

    iget-boolean v12, v0, Lcom/google/android/gms/internal/ads/zzbef;->zzeqr:Z

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzbef;->zzeqs:Lcom/google/android/gms/internal/ads/zzdmu;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzbef;->zzeqt:Lcom/google/android/gms/internal/ads/zzdmz;

    move-object/from16 v16, v9

    .line 2
    new-instance v9, Lcom/google/android/gms/internal/ads/zzbeg;

    const/16 v17, 0x0

    move-object/from16 v18, v5

    move v5, v15

    move-object v0, v9

    move-object/from16 v9, v17

    move/from16 v17, v12

    move-object v12, v14

    move-object/from16 v19, v14

    move/from16 v14, v17

    move/from16 v20, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v18

    .line 3
    invoke-static/range {v1 .. v16}, Lcom/google/android/gms/internal/ads/zzbel;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbfn;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzef;Lcom/google/android/gms/internal/ads/zzacg;Lcom/google/android/gms/internal/ads/zzazh;Lcom/google/android/gms/internal/ads/zzabs;Lcom/google/android/gms/ads/internal/zzk;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzts;Lcom/google/android/gms/internal/ads/zzsu;ZLcom/google/android/gms/internal/ads/zzdmu;Lcom/google/android/gms/internal/ads/zzdmz;)Lcom/google/android/gms/internal/ads/zzbel;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbeg;-><init>(Lcom/google/android/gms/internal/ads/zzbdv;)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzks()Lcom/google/android/gms/ads/internal/util/zzu;

    move-result-object v1

    move-object/from16 v3, v19

    move/from16 v2, v20

    .line 6
    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/gms/ads/internal/util/zzu;->zza(Lcom/google/android/gms/internal/ads/zzbdv;Lcom/google/android/gms/internal/ads/zzts;Z)Lcom/google/android/gms/internal/ads/zzbdu;

    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbdv;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 8
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbdn;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdn;-><init>(Lcom/google/android/gms/internal/ads/zzbdv;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbdv;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-object v0
.end method
