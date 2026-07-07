.class public final Lcom/google/android/gms/cast/internal/zzu;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-cast@@18.1.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/cast/internal/zzu;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzabz:Lcom/google/android/gms/cast/ApplicationMetadata;

.field private zzdy:D

.field private zzdz:Z

.field private zzea:I

.field private zzeb:I

.field private zzec:Lcom/google/android/gms/cast/zzah;

.field private zzed:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Lcom/google/android/gms/cast/internal/zzw;

    invoke-direct {v0}, Lcom/google/android/gms/cast/internal/zzw;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/internal/zzu;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const-wide/high16 v8, 0x7ff8000000000000L    # Double.NaN

    move-object v0, p0

    .line 10
    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/cast/internal/zzu;-><init>(DZILcom/google/android/gms/cast/ApplicationMetadata;ILcom/google/android/gms/cast/zzah;D)V

    return-void
.end method

.method constructor <init>(DZILcom/google/android/gms/cast/ApplicationMetadata;ILcom/google/android/gms/cast/zzah;D)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/android/gms/cast/internal/zzu;->zzdy:D

    .line 3
    iput-boolean p3, p0, Lcom/google/android/gms/cast/internal/zzu;->zzdz:Z

    .line 4
    iput p4, p0, Lcom/google/android/gms/cast/internal/zzu;->zzea:I

    .line 5
    iput-object p5, p0, Lcom/google/android/gms/cast/internal/zzu;->zzabz:Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 6
    iput p6, p0, Lcom/google/android/gms/cast/internal/zzu;->zzeb:I

    .line 7
    iput-object p7, p0, Lcom/google/android/gms/cast/internal/zzu;->zzec:Lcom/google/android/gms/cast/zzah;

    .line 8
    iput-wide p8, p0, Lcom/google/android/gms/cast/internal/zzu;->zzed:D

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 48
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/cast/internal/zzu;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 50
    :cond_1
    check-cast p1, Lcom/google/android/gms/cast/internal/zzu;

    .line 51
    iget-wide v3, p0, Lcom/google/android/gms/cast/internal/zzu;->zzdy:D

    iget-wide v5, p1, Lcom/google/android/gms/cast/internal/zzu;->zzdy:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/gms/cast/internal/zzu;->zzdz:Z

    iget-boolean v3, p1, Lcom/google/android/gms/cast/internal/zzu;->zzdz:Z

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/gms/cast/internal/zzu;->zzea:I

    iget v3, p1, Lcom/google/android/gms/cast/internal/zzu;->zzea:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzu;->zzabz:Lcom/google/android/gms/cast/ApplicationMetadata;

    iget-object v3, p1, Lcom/google/android/gms/cast/internal/zzu;->zzabz:Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 52
    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/cast/internal/zzu;->zzeb:I

    iget v3, p1, Lcom/google/android/gms/cast/internal/zzu;->zzeb:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzu;->zzec:Lcom/google/android/gms/cast/zzah;

    .line 53
    invoke-static {v1, v1}, Lcom/google/android/gms/cast/internal/CastUtils;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/google/android/gms/cast/internal/zzu;->zzed:D

    iget-wide v5, p1, Lcom/google/android/gms/cast/internal/zzu;->zzed:D

    cmpl-double p1, v3, v5

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final getActiveInputState()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/google/android/gms/cast/internal/zzu;->zzea:I

    return v0
.end method

.method public final getApplicationMetadata()Lcom/google/android/gms/cast/ApplicationMetadata;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzu;->zzabz:Lcom/google/android/gms/cast/ApplicationMetadata;

    return-object v0
.end method

.method public final getStandbyState()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/google/android/gms/cast/internal/zzu;->zzeb:I

    return v0
.end method

.method public final getVolume()D
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/google/android/gms/cast/internal/zzu;->zzdy:D

    return-wide v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    .line 55
    iget-wide v1, p0, Lcom/google/android/gms/cast/internal/zzu;->zzdy:D

    .line 56
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/cast/internal/zzu;->zzdz:Z

    .line 57
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/cast/internal/zzu;->zzea:I

    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzu;->zzabz:Lcom/google/android/gms/cast/ApplicationMetadata;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/cast/internal/zzu;->zzeb:I

    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzu;->zzec:Lcom/google/android/gms/cast/zzah;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/cast/internal/zzu;->zzed:D

    .line 60
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 61
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 20
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 22
    iget-wide v1, p0, Lcom/google/android/gms/cast/internal/zzu;->zzdy:D

    const/4 v3, 0x2

    .line 23
    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeDouble(Landroid/os/Parcel;ID)V

    .line 25
    iget-boolean v1, p0, Lcom/google/android/gms/cast/internal/zzu;->zzdz:Z

    const/4 v2, 0x3

    .line 26
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 28
    iget v1, p0, Lcom/google/android/gms/cast/internal/zzu;->zzea:I

    const/4 v2, 0x4

    .line 29
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 31
    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzu;->zzabz:Lcom/google/android/gms/cast/ApplicationMetadata;

    const/4 v2, 0x5

    const/4 v3, 0x0

    .line 33
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 35
    iget v1, p0, Lcom/google/android/gms/cast/internal/zzu;->zzeb:I

    const/4 v2, 0x6

    .line 36
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 38
    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzu;->zzec:Lcom/google/android/gms/cast/zzah;

    const/4 v2, 0x7

    .line 40
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 42
    iget-wide v1, p0, Lcom/google/android/gms/cast/internal/zzu;->zzed:D

    const/16 p2, 0x8

    .line 43
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeDouble(Landroid/os/Parcel;ID)V

    .line 44
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzfa()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/google/android/gms/cast/internal/zzu;->zzdz:Z

    return v0
.end method

.method public final zzfb()Lcom/google/android/gms/cast/zzah;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzu;->zzec:Lcom/google/android/gms/cast/zzah;

    return-object v0
.end method

.method public final zzfc()D
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/google/android/gms/cast/internal/zzu;->zzed:D

    return-wide v0
.end method
