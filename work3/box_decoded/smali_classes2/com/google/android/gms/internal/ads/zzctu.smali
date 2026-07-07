.class final synthetic Lcom/google/android/gms/internal/ads/zzctu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzfvd:Lcom/google/android/gms/internal/ads/zzdyz;

.field private final zzfxh:Lcom/google/android/gms/internal/ads/zzdyz;

.field private final zzgsk:Lcom/google/android/gms/internal/ads/zzctn;

.field private final zzgsn:Lcom/google/android/gms/internal/ads/zzdnj;

.field private final zzgso:Lcom/google/android/gms/internal/ads/zzdmu;

.field private final zzgsp:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzctn;Lcom/google/android/gms/internal/ads/zzdyz;Lcom/google/android/gms/internal/ads/zzdyz;Lcom/google/android/gms/internal/ads/zzdnj;Lcom/google/android/gms/internal/ads/zzdmu;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctu;->zzgsk:Lcom/google/android/gms/internal/ads/zzctn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzctu;->zzfxh:Lcom/google/android/gms/internal/ads/zzdyz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzctu;->zzfvd:Lcom/google/android/gms/internal/ads/zzdyz;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzctu;->zzgsn:Lcom/google/android/gms/internal/ads/zzdnj;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzctu;->zzgso:Lcom/google/android/gms/internal/ads/zzdmu;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzctu;->zzgsp:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctu;->zzgsk:Lcom/google/android/gms/internal/ads/zzctn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzctu;->zzfxh:Lcom/google/android/gms/internal/ads/zzdyz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzctu;->zzfvd:Lcom/google/android/gms/internal/ads/zzdyz;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzctu;->zzgsn:Lcom/google/android/gms/internal/ads/zzdnj;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzctu;->zzgso:Lcom/google/android/gms/internal/ads/zzdmu;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzctu;->zzgsp:Lorg/json/JSONObject;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzctn;->zza(Lcom/google/android/gms/internal/ads/zzdyz;Lcom/google/android/gms/internal/ads/zzdyz;Lcom/google/android/gms/internal/ads/zzdnj;Lcom/google/android/gms/internal/ads/zzdmu;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzcbt;

    move-result-object v0

    return-object v0
.end method
