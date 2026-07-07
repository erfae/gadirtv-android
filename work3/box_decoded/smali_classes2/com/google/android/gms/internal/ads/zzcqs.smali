.class final synthetic Lcom/google/android/gms/internal/ads/zzcqs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdqv;


# instance fields
.field private final zzdgt:Ljava/lang/String;

.field private final zzgqf:Lcom/google/android/gms/internal/ads/zzcqo;

.field private final zzgqi:Lcom/google/android/gms/internal/ads/zzaze;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcqo;Lcom/google/android/gms/internal/ads/zzaze;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqs;->zzgqf:Lcom/google/android/gms/internal/ads/zzcqo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcqs;->zzgqi:Lcom/google/android/gms/internal/ads/zzaze;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcqs;->zzdgt:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqs;->zzgqf:Lcom/google/android/gms/internal/ads/zzcqo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcqs;->zzgqi:Lcom/google/android/gms/internal/ads/zzaze;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcqs;->zzdgt:Ljava/lang/String;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzcqo;->zza(Lcom/google/android/gms/internal/ads/zzaze;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
