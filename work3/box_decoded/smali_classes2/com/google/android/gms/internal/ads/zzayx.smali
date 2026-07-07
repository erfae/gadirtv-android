.class final synthetic Lcom/google/android/gms/internal/ads/zzayx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzazb;


# instance fields
.field private final zzdha:Ljava/lang/String;

.field private final zzdie:Ljava/util/Map;

.field private final zzdih:Ljava/lang/String;

.field private final zzegj:[B


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayx;->zzdih:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzayx;->zzdha:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzayx;->zzdie:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzayx;->zzegj:[B

    return-void
.end method


# virtual methods
.method public final zzb(Landroid/util/JsonWriter;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayx;->zzdih:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayx;->zzdha:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzayx;->zzdie:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzayx;->zzegj:[B

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzayu;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BLandroid/util/JsonWriter;)V

    return-void
.end method
