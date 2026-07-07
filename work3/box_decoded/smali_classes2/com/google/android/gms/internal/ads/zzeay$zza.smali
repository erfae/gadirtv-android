.class final Lcom/google/android/gms/internal/ads/zzeay$zza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdzt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzeay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zza"
.end annotation


# instance fields
.field private final zzhzu:Lcom/google/android/gms/internal/ads/zzeam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeam<",
            "Lcom/google/android/gms/internal/ads/zzdzt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzeam;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzeam<",
            "Lcom/google/android/gms/internal/ads/zzdzt;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeay$zza;->zzhzu:Lcom/google/android/gms/internal/ads/zzeam;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeam;Lcom/google/android/gms/internal/ads/zzeax;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzeay$zza;-><init>(Lcom/google/android/gms/internal/ads/zzeam;)V

    return-void
.end method


# virtual methods
.method public final zzc([B[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [[B

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeay$zza;->zzhzu:Lcom/google/android/gms/internal/ads/zzeam;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeam;->zzbae()Lcom/google/android/gms/internal/ads/zzeal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeal;->zzbad()[B

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeay$zza;->zzhzu:Lcom/google/android/gms/internal/ads/zzeam;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeam;->zzbae()Lcom/google/android/gms/internal/ads/zzeal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeal;->zzbaa()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdzt;

    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzdzt;->zzc([B[B)[B

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzegr;->zza([[B)[B

    move-result-object p1

    return-object p1
.end method
