.class final synthetic Lcom/google/android/gms/internal/ads/zzbec;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyb;


# instance fields
.field private final zzclq:Landroid/content/Context;

.field private final zzdgv:Ljava/lang/String;

.field private final zzdir:Lcom/google/android/gms/internal/ads/zzef;

.field private final zzeqd:Lcom/google/android/gms/internal/ads/zzazh;

.field private final zzeqe:Lcom/google/android/gms/ads/internal/zzb;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzef;Lcom/google/android/gms/internal/ads/zzazh;Lcom/google/android/gms/ads/internal/zzb;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbec;->zzclq:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbec;->zzdir:Lcom/google/android/gms/internal/ads/zzef;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbec;->zzeqd:Lcom/google/android/gms/internal/ads/zzazh;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbec;->zzeqe:Lcom/google/android/gms/ads/internal/zzb;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbec;->zzdgv:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdyz;
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbec;->zzclq:Landroid/content/Context;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzbec;->zzdir:Lcom/google/android/gms/internal/ads/zzef;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzbec;->zzeqd:Lcom/google/android/gms/internal/ads/zzazh;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzbec;->zzeqe:Lcom/google/android/gms/ads/internal/zzb;

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzbec;->zzdgv:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzbed;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbfn;->zzadv()Lcom/google/android/gms/internal/ads/zzbfn;

    move-result-object v2

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzts;->zzne()Lcom/google/android/gms/internal/ads/zzts;

    move-result-object v12

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v18, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    .line 5
    invoke-static/range {v1 .. v16}, Lcom/google/android/gms/internal/ads/zzbed;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbfn;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzef;Lcom/google/android/gms/internal/ads/zzacg;Lcom/google/android/gms/internal/ads/zzazh;Lcom/google/android/gms/internal/ads/zzabs;Lcom/google/android/gms/ads/internal/zzk;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzts;Lcom/google/android/gms/internal/ads/zzsu;ZLcom/google/android/gms/internal/ads/zzdmu;Lcom/google/android/gms/internal/ads/zzdmz;)Lcom/google/android/gms/internal/ads/zzbdv;

    move-result-object v1

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzazr;->zzl(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzazr;

    move-result-object v2

    .line 8
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbdv;->zzacs()Lcom/google/android/gms/internal/ads/zzbfg;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzbee;

    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/ads/zzbee;-><init>(Lcom/google/android/gms/internal/ads/zzazr;)V

    .line 9
    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzbfg;->zza(Lcom/google/android/gms/internal/ads/zzbfj;)V

    move-object/from16 v3, v18

    .line 10
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzbdv;->loadUrl(Ljava/lang/String;)V

    return-object v2
.end method
