.class final Lcom/google/android/gms/internal/ads/zzeab;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<KeyFormatProtoT::",
        "Lcom/google/android/gms/internal/ads/zzels;",
        "KeyProtoT::",
        "Lcom/google/android/gms/internal/ads/zzels;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zzhyh:Lcom/google/android/gms/internal/ads/zzead;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzead<",
            "TKeyFormatProtoT;TKeyProtoT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzead;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzead<",
            "TKeyFormatProtoT;TKeyProtoT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeab;->zzhyh:Lcom/google/android/gms/internal/ads/zzead;

    return-void
.end method


# virtual methods
.method final zzp(Lcom/google/android/gms/internal/ads/zzeiu;)Lcom/google/android/gms/internal/ads/zzels;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzeiu;",
            ")TKeyProtoT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Lcom/google/android/gms/internal/ads/zzeks;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeab;->zzhyh:Lcom/google/android/gms/internal/ads/zzead;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzead;->zzq(Lcom/google/android/gms/internal/ads/zzeiu;)Lcom/google/android/gms/internal/ads/zzels;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeab;->zzhyh:Lcom/google/android/gms/internal/ads/zzead;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzead;->zzc(Lcom/google/android/gms/internal/ads/zzels;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeab;->zzhyh:Lcom/google/android/gms/internal/ads/zzead;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzead;->zzd(Lcom/google/android/gms/internal/ads/zzels;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzels;

    return-object p1
.end method
