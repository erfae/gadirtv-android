.class final synthetic Lcom/google/android/gms/internal/ads/zzcqp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdha:Ljava/lang/String;

.field private final zzgqg:Landroid/database/sqlite/SQLiteDatabase;

.field private final zzgqh:Lcom/google/android/gms/internal/ads/zzaze;


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaze;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqp;->zzgqg:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcqp;->zzdha:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcqp;->zzgqh:Lcom/google/android/gms/internal/ads/zzaze;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqp;->zzgqg:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcqp;->zzdha:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcqp;->zzgqh:Lcom/google/android/gms/internal/ads/zzaze;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcqo;->zza(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaze;)V

    return-void
.end method
