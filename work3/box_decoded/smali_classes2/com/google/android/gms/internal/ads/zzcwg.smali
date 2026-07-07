.class final synthetic Lcom/google/android/gms/internal/ads/zzcwg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdqy;


# instance fields
.field private final zzgul:Lcom/google/android/gms/internal/ads/zzcwe;

.field private final zzgum:Lcom/google/android/gms/internal/ads/zzabu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcwe;Lcom/google/android/gms/internal/ads/zzabu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcwg;->zzgul:Lcom/google/android/gms/internal/ads/zzcwe;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcwg;->zzgum:Lcom/google/android/gms/internal/ads/zzabu;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwg;->zzgul:Lcom/google/android/gms/internal/ads/zzcwe;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcwg;->zzgum:Lcom/google/android/gms/internal/ads/zzabu;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcwe;->zza(Lcom/google/android/gms/internal/ads/zzabu;)V

    return-void
.end method
