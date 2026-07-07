.class final synthetic Lcom/google/android/gms/internal/ads/zzbqs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdvm;


# instance fields
.field private final zzclq:Landroid/content/Context;

.field private final zzftn:Lcom/google/android/gms/internal/ads/zzazh;

.field private final zzfwk:Lcom/google/android/gms/internal/ads/zzdnn;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazh;Lcom/google/android/gms/internal/ads/zzdnn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqs;->zzclq:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbqs;->zzftn:Lcom/google/android/gms/internal/ads/zzazh;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbqs;->zzfwk:Lcom/google/android/gms/internal/ads/zzdnn;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqs;->zzclq:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbqs;->zzftn:Lcom/google/android/gms/internal/ads/zzazh;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbqs;->zzfwk:Lcom/google/android/gms/internal/ads/zzdnn;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdmu;

    .line 2
    new-instance v3, Lcom/google/android/gms/ads/internal/util/zzag;

    invoke-direct {v3, v0}, Lcom/google/android/gms/ads/internal/util/zzag;-><init>(Landroid/content/Context;)V

    .line 3
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdmu;->zzdus:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/ads/internal/util/zzag;->zzep(Ljava/lang/String;)V

    .line 4
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdmu;->zzhhc:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/google/android/gms/ads/internal/util/zzag;->zzeq(Ljava/lang/String;)V

    .line 5
    iget-object p1, v1, Lcom/google/android/gms/internal/ads/zzazh;->zzbrf:Ljava/lang/String;

    invoke-virtual {v3, p1}, Lcom/google/android/gms/ads/internal/util/zzag;->zzad(Ljava/lang/String;)V

    .line 6
    iget-object p1, v2, Lcom/google/android/gms/internal/ads/zzdnn;->zzhip:Ljava/lang/String;

    invoke-virtual {v3, p1}, Lcom/google/android/gms/ads/internal/util/zzag;->setAdUnitId(Ljava/lang/String;)V

    return-object v3
.end method
