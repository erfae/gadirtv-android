.class final Lcom/google/android/gms/internal/ads/zzdwr;
.super Lcom/google/android/gms/internal/ads/zzdwm;
.source "com.google.android.gms:play-services-gass@@19.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdwm<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final transient length:I

.field private final transient offset:I

.field private final synthetic zzhvb:Lcom/google/android/gms/internal/ads/zzdwm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdwm;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwr;->zzhvb:Lcom/google/android/gms/internal/ads/zzdwm;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdwm;-><init>()V

    .line 2
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzdwr;->offset:I

    .line 3
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzdwr;->length:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdwr;->length:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzdvv;->zzt(II)I

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwr;->zzhvb:Lcom/google/android/gms/internal/ads/zzdwm;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdwr;->offset:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdwm;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdwr;->length:I

    return v0
.end method

.method public final synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdwm;->zzv(II)Lcom/google/android/gms/internal/ads/zzdwm;

    move-result-object p1

    return-object p1
.end method

.method final zzayq()[Ljava/lang/Object;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwr;->zzhvb:Lcom/google/android/gms/internal/ads/zzdwm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdwl;->zzayq()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final zzayr()I
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwr;->zzhvb:Lcom/google/android/gms/internal/ads/zzdwm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdwl;->zzayr()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdwr;->offset:I

    add-int/2addr v0, v1

    return v0
.end method

.method final zzays()I
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwr;->zzhvb:Lcom/google/android/gms/internal/ads/zzdwm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdwl;->zzayr()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdwr;->offset:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdwr;->length:I

    add-int/2addr v0, v1

    return v0
.end method

.method final zzayu()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zzv(II)Lcom/google/android/gms/internal/ads/zzdwm;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/android/gms/internal/ads/zzdwm<",
            "TE;>;"
        }
    .end annotation

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdwr;->length:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzdvv;->zzf(III)V

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwr;->zzhvb:Lcom/google/android/gms/internal/ads/zzdwm;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdwr;->offset:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdwm;->subList(II)Ljava/util/List;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdwm;

    return-object p1
.end method
