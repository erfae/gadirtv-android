.class final Lcom/google/android/gms/internal/ads/zzeba;
.super Lcom/google/android/gms/internal/ads/zzead;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzead<",
        "Lcom/google/android/gms/internal/ads/zzedj;",
        "Lcom/google/android/gms/internal/ads/zzedi;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzhzv:Lcom/google/android/gms/internal/ads/zzeaz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzeaz;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeba;->zzhzv:Lcom/google/android/gms/internal/ads/zzeaz;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzead;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzc(Lcom/google/android/gms/internal/ads/zzels;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 16
    check-cast p1, Lcom/google/android/gms/internal/ads/zzedj;

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/ads/zzebd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzebd;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeae;->zzazy()Lcom/google/android/gms/internal/ads/zzead;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzedj;->zzbay()Lcom/google/android/gms/internal/ads/zzedn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzead;->zzc(Lcom/google/android/gms/internal/ads/zzels;)V

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/ads/zzecu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzecu;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeae;->zzazy()Lcom/google/android/gms/internal/ads/zzead;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzedj;->zzbaz()Lcom/google/android/gms/internal/ads/zzefd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzead;->zzc(Lcom/google/android/gms/internal/ads/zzels;)V

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzedj;->zzbay()Lcom/google/android/gms/internal/ads/zzedn;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzedn;->getKeySize()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeic;->zzft(I)V

    return-void
.end method

.method public final synthetic zzd(Lcom/google/android/gms/internal/ads/zzels;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzedj;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzebd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzebd;-><init>()V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeae;->zzazy()Lcom/google/android/gms/internal/ads/zzead;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzedj;->zzbay()Lcom/google/android/gms/internal/ads/zzedn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzead;->zzd(Lcom/google/android/gms/internal/ads/zzels;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzedm;

    .line 5
    new-instance v1, Lcom/google/android/gms/internal/ads/zzecu;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzecu;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeae;->zzazy()Lcom/google/android/gms/internal/ads/zzead;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzedj;->zzbaz()Lcom/google/android/gms/internal/ads/zzefd;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzead;->zzd(Lcom/google/android/gms/internal/ads/zzels;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzefc;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzedi;->zzbaw()Lcom/google/android/gms/internal/ads/zzedi$zza;

    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzedi$zza;->zzc(Lcom/google/android/gms/internal/ads/zzedm;)Lcom/google/android/gms/internal/ads/zzedi$zza;

    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzedi$zza;->zzc(Lcom/google/android/gms/internal/ads/zzefc;)Lcom/google/android/gms/internal/ads/zzedi$zza;

    move-result-object p1

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzedi$zza;->zzew(I)Lcom/google/android/gms/internal/ads/zzedi$zza;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzekh$zza;->zzbhv()Lcom/google/android/gms/internal/ads/zzels;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzekh;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzedi;

    return-object p1
.end method

.method public final synthetic zzq(Lcom/google/android/gms/internal/ads/zzeiu;)Lcom/google/android/gms/internal/ads/zzels;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzeks;
        }
    .end annotation

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeju;->zzbhe()Lcom/google/android/gms/internal/ads/zzeju;

    move-result-object v0

    .line 14
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzedj;->zzf(Lcom/google/android/gms/internal/ads/zzeiu;Lcom/google/android/gms/internal/ads/zzeju;)Lcom/google/android/gms/internal/ads/zzedj;

    move-result-object p1

    return-object p1
.end method
