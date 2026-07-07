.class public final Lcom/google/android/gms/internal/ads/zzeal;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zzhyp:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field

.field private final zzhyq:[B

.field private final zzhyr:Lcom/google/android/gms/internal/ads/zzefl;

.field private final zzhys:Lcom/google/android/gms/internal/ads/zzegd;

.field private final zzhyt:I


# direct methods
.method constructor <init>(Ljava/lang/Object;[BLcom/google/android/gms/internal/ads/zzefl;Lcom/google/android/gms/internal/ads/zzegd;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;[B",
            "Lcom/google/android/gms/internal/ads/zzefl;",
            "Lcom/google/android/gms/internal/ads/zzegd;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeal;->zzhyp:Ljava/lang/Object;

    .line 3
    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeal;->zzhyq:[B

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeal;->zzhyr:Lcom/google/android/gms/internal/ads/zzefl;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeal;->zzhys:Lcom/google/android/gms/internal/ads/zzegd;

    .line 6
    iput p5, p0, Lcom/google/android/gms/internal/ads/zzeal;->zzhyt:I

    return-void
.end method


# virtual methods
.method public final zzbaa()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeal;->zzhyp:Ljava/lang/Object;

    return-object v0
.end method

.method public final zzbab()Lcom/google/android/gms/internal/ads/zzefl;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeal;->zzhyr:Lcom/google/android/gms/internal/ads/zzefl;

    return-object v0
.end method

.method public final zzbac()Lcom/google/android/gms/internal/ads/zzegd;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeal;->zzhys:Lcom/google/android/gms/internal/ads/zzegd;

    return-object v0
.end method

.method public final zzbad()[B
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeal;->zzhyq:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 13
    :cond_0
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method
