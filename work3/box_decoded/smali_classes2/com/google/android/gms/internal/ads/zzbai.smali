.class final Lcom/google/android/gms/internal/ads/zzbai;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzeib:Lcom/google/android/gms/internal/ads/zzbac;

.field private final synthetic zzeif:I

.field private final synthetic zzeig:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbac;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbai;->zzeib:Lcom/google/android/gms/internal/ads/zzbac;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbai;->zzeif:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzbai;->zzeig:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbai;->zzeib:Lcom/google/android/gms/internal/ads/zzbac;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbac;->zza(Lcom/google/android/gms/internal/ads/zzbac;)Lcom/google/android/gms/internal/ads/zzbam;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbai;->zzeib:Lcom/google/android/gms/internal/ads/zzbac;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbac;->zza(Lcom/google/android/gms/internal/ads/zzbac;)Lcom/google/android/gms/internal/ads/zzbam;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbai;->zzeif:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbai;->zzeig:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbam;->zzk(II)V

    :cond_0
    return-void
.end method
