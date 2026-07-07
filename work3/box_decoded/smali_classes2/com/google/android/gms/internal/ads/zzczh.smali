.class final synthetic Lcom/google/android/gms/internal/ads/zzczh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzgxl:Lcom/google/android/gms/internal/ads/zzcyx;

.field private final zzgxo:[Lcom/google/android/gms/internal/ads/zzcgh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcyx;[Lcom/google/android/gms/internal/ads/zzcgh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzczh;->zzgxl:Lcom/google/android/gms/internal/ads/zzcyx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzczh;->zzgxo:[Lcom/google/android/gms/internal/ads/zzcgh;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczh;->zzgxl:Lcom/google/android/gms/internal/ads/zzcyx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzczh;->zzgxo:[Lcom/google/android/gms/internal/ads/zzcgh;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcyx;->zza([Lcom/google/android/gms/internal/ads/zzcgh;)V

    return-void
.end method
