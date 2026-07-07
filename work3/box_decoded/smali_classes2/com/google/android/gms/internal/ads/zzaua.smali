.class public final Lcom/google/android/gms/internal/ads/zzaua;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzatp;


# instance fields
.field private zzdxq:Lcom/google/android/gms/internal/ads/zzamd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzamd<",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private zzdxr:Lcom/google/android/gms/internal/ads/zzamd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzamd<",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzld()Lcom/google/android/gms/internal/ads/zzamc;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzazh;->zzzi()Lcom/google/android/gms/internal/ads/zzazh;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzamc;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazh;)Lcom/google/android/gms/internal/ads/zzaml;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzamg;->zzdjy:Lcom/google/android/gms/internal/ads/zzamh;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzamg;->zzdjy:Lcom/google/android/gms/internal/ads/zzamh;

    const-string v3, "google.afma.request.getAdDictionary"

    .line 5
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzaml;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzame;Lcom/google/android/gms/internal/ads/zzamf;)Lcom/google/android/gms/internal/ads/zzamd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaua;->zzdxr:Lcom/google/android/gms/internal/ads/zzamd;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzld()Lcom/google/android/gms/internal/ads/zzamc;

    move-result-object v0

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzazh;->zzzi()Lcom/google/android/gms/internal/ads/zzazh;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzamc;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazh;)Lcom/google/android/gms/internal/ads/zzaml;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzamg;->zzdjy:Lcom/google/android/gms/internal/ads/zzamh;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzamg;->zzdjy:Lcom/google/android/gms/internal/ads/zzamh;

    const-string v2, "google.afma.sdkConstants.getSdkConstants"

    .line 9
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzaml;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzame;Lcom/google/android/gms/internal/ads/zzamf;)Lcom/google/android/gms/internal/ads/zzamd;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaua;->zzdxq:Lcom/google/android/gms/internal/ads/zzamd;

    return-void
.end method


# virtual methods
.method public final zzvs()Lcom/google/android/gms/internal/ads/zzamd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzamd<",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaua;->zzdxq:Lcom/google/android/gms/internal/ads/zzamd;

    return-object v0
.end method
