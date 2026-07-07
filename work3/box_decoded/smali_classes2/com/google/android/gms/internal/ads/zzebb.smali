.class final Lcom/google/android/gms/internal/ads/zzebb;
.super Lcom/google/android/gms/internal/ads/zzeag;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzeag<",
        "Lcom/google/android/gms/internal/ads/zzdzt;",
        "Lcom/google/android/gms/internal/ads/zzedi;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzeag;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzah(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzedi;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzehi;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzebd;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzebd;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzedi;->zzbau()Lcom/google/android/gms/internal/ads/zzedm;

    move-result-object v2

    const-class v3, Lcom/google/android/gms/internal/ads/zzehr;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzeae;->zza(Lcom/google/android/gms/internal/ads/zzels;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzehr;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzecu;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzecu;-><init>()V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzedi;->zzbav()Lcom/google/android/gms/internal/ads/zzefc;

    move-result-object v3

    const-class v4, Lcom/google/android/gms/internal/ads/zzeak;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzeae;->zza(Lcom/google/android/gms/internal/ads/zzels;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzeak;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzedi;->zzbav()Lcom/google/android/gms/internal/ads/zzefc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzefc;->zzbcw()Lcom/google/android/gms/internal/ads/zzefg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzefg;->zzbar()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzehi;-><init>(Lcom/google/android/gms/internal/ads/zzehr;Lcom/google/android/gms/internal/ads/zzeak;I)V

    return-object v0
.end method
