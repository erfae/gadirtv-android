.class final Lcom/google/android/gms/internal/ads/zzalq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzazu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzazu<",
        "Lcom/google/android/gms/internal/ads/zzalz;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzdjl:Lcom/google/android/gms/internal/ads/zzalo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzalo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalq;->zzdjl:Lcom/google/android/gms/internal/ads/zzalo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzh(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzalz;

    const-string p1, "Releasing engine reference."

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzee(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzalq;->zzdjl:Lcom/google/android/gms/internal/ads/zzalo;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzalo;->zza(Lcom/google/android/gms/internal/ads/zzalo;)Lcom/google/android/gms/internal/ads/zzals;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzals;->zztw()V

    return-void
.end method
