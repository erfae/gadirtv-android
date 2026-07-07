.class final synthetic Lcom/google/android/gms/internal/ads/zzayw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzazb;


# instance fields
.field private final zzegh:I

.field private final zzegi:Ljava/util/Map;


# direct methods
.method constructor <init>(ILjava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzegh:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzegi:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final zzb(Landroid/util/JsonWriter;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzegh:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzegi:Ljava/util/Map;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzayu;->zza(ILjava/util/Map;Landroid/util/JsonWriter;)V

    return-void
.end method
