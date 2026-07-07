.class final synthetic Lcom/google/android/gms/internal/ads/zzceq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzfvd:Lcom/google/android/gms/internal/ads/zzdyz;

.field private final zzfxh:Lcom/google/android/gms/internal/ads/zzdyz;

.field private final zzgfy:Lcom/google/android/gms/internal/ads/zzceo;

.field private final zzggg:Lcom/google/android/gms/internal/ads/zzdyz;

.field private final zzggh:Lcom/google/android/gms/internal/ads/zzdyz;

.field private final zzggi:Lcom/google/android/gms/internal/ads/zzdyz;

.field private final zzggj:Lorg/json/JSONObject;

.field private final zzggk:Lcom/google/android/gms/internal/ads/zzdyz;

.field private final zzggl:Lcom/google/android/gms/internal/ads/zzdyz;

.field private final zzggm:Lcom/google/android/gms/internal/ads/zzdyz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzceo;Lcom/google/android/gms/internal/ads/zzdyz;Lcom/google/android/gms/internal/ads/zzdyz;Lcom/google/android/gms/internal/ads/zzdyz;Lcom/google/android/gms/internal/ads/zzdyz;Lcom/google/android/gms/internal/ads/zzdyz;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzdyz;Lcom/google/android/gms/internal/ads/zzdyz;Lcom/google/android/gms/internal/ads/zzdyz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzceq;->zzgfy:Lcom/google/android/gms/internal/ads/zzceo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzceq;->zzfxh:Lcom/google/android/gms/internal/ads/zzdyz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzceq;->zzfvd:Lcom/google/android/gms/internal/ads/zzdyz;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzceq;->zzggg:Lcom/google/android/gms/internal/ads/zzdyz;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzceq;->zzggh:Lcom/google/android/gms/internal/ads/zzdyz;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzceq;->zzggi:Lcom/google/android/gms/internal/ads/zzdyz;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzceq;->zzggj:Lorg/json/JSONObject;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzceq;->zzggk:Lcom/google/android/gms/internal/ads/zzdyz;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzceq;->zzggl:Lcom/google/android/gms/internal/ads/zzdyz;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzceq;->zzggm:Lcom/google/android/gms/internal/ads/zzdyz;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzceq;->zzfxh:Lcom/google/android/gms/internal/ads/zzdyz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzceq;->zzfvd:Lcom/google/android/gms/internal/ads/zzdyz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzceq;->zzggg:Lcom/google/android/gms/internal/ads/zzdyz;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzceq;->zzggh:Lcom/google/android/gms/internal/ads/zzdyz;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzceq;->zzggi:Lcom/google/android/gms/internal/ads/zzdyz;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzceq;->zzggj:Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzceq;->zzggk:Lcom/google/android/gms/internal/ads/zzdyz;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzceq;->zzggl:Lcom/google/android/gms/internal/ads/zzdyz;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzceq;->zzggm:Lcom/google/android/gms/internal/ads/zzdyz;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdyz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcce;

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdyz;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcce;->setImages(Ljava/util/List;)V

    .line 4
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdyz;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaej;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcce;->zza(Lcom/google/android/gms/internal/ads/zzaej;)V

    .line 5
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzdyz;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaej;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcce;->zzb(Lcom/google/android/gms/internal/ads/zzaej;)V

    .line 6
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzdyz;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaeb;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcce;->zza(Lcom/google/android/gms/internal/ads/zzaeb;)V

    .line 7
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzces;->zzj(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcce;->zzh(Ljava/util/List;)V

    .line 9
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzces;->zzk(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzzk;

    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcce;->zza(Lcom/google/android/gms/internal/ads/zzzk;)V

    .line 11
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzdyz;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbdv;

    if-eqz v1, :cond_0

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcce;->zzi(Lcom/google/android/gms/internal/ads/zzbdv;)V

    .line 14
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbdv;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzcce;->zzac(Landroid/view/View;)V

    .line 15
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbdv;->zzaah()Lcom/google/android/gms/internal/ads/zzbep;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcce;->zzb(Lcom/google/android/gms/internal/ads/zzys;)V

    .line 16
    :cond_0
    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/zzdyz;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbdv;

    if-eqz v1, :cond_1

    .line 18
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcce;->zzj(Lcom/google/android/gms/internal/ads/zzbdv;)V

    .line 19
    :cond_1
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzdyz;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzcfd;

    .line 20
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzcfd;->type:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    goto :goto_0

    .line 23
    :cond_2
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzcfd;->zzck:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzcfd;->zzggw:Lcom/google/android/gms/internal/ads/zzadv;

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzcce;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzadv;)V

    goto :goto_0

    .line 21
    :cond_3
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzcfd;->zzck:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzcfd;->zzdpv:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzcce;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return-object v0
.end method
