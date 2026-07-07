.class public Lcom/google/android/gms/cast/framework/media/NotificationOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-cast-framework@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/cast/framework/media/NotificationOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final SKIP_STEP_TEN_SECONDS_IN_MS:J = 0x2710L

.field public static final SKIP_STEP_THIRTY_SECONDS_IN_MS:J = 0x7530L

.field private static final zzri:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzrj:[I


# instance fields
.field private final zzpw:J

.field private final zzrk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzrl:[I

.field private final zzrm:Ljava/lang/String;

.field private final zzrn:I

.field private final zzro:I

.field private final zzrp:I

.field private final zzrq:I

.field private final zzrr:I

.field private final zzrs:I

.field private final zzrt:I

.field private final zzru:I

.field private final zzrv:I

.field private final zzrw:I

.field private final zzrx:I

.field private final zzry:I

.field private final zzrz:I

.field private final zzsa:I

.field private final zzsb:I

.field private final zzsc:I

.field private final zzsd:I

.field private final zzse:I

.field private final zzsf:I

.field private final zzsg:I

.field private final zzsh:I

.field private final zzsi:I

.field private final zzsj:I

.field private final zzsk:I

.field private final zzsl:I

.field private final zzsm:I

.field private final zzsn:I

.field private final zzso:Lcom/google/android/gms/cast/framework/media/zzc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com.google.android.gms.cast.framework.action.TOGGLE_PLAYBACK"

    const-string v1, "com.google.android.gms.cast.framework.action.STOP_CASTING"

    .line 183
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzri:Ljava/util/List;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 185
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzrj:[I

    .line 186
    new-instance v0, Lcom/google/android/gms/cast/framework/media/zzr;

    invoke-direct {v0}, Lcom/google/android/gms/cast/framework/media/zzr;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public constructor <init>(Ljava/util/List;[IJLjava/lang/String;IIIIIIIIIIIIIIIIIIIIIIIIIIILandroid/os/IBinder;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[IJ",
            "Ljava/lang/String;",
            "IIIIIIIIIIIIIIIIIIIIIIIIIII",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p33

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzrk:Ljava/util/List;

    goto :goto_0

    .line 4
    :cond_0
    iput-object v4, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzrk:Ljava/util/List;

    :goto_0
    if-eqz v2, :cond_1

    .line 6
    array-length v1, v2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzrl:[I

    goto :goto_1

    .line 7
    :cond_1
    iput-object v4, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzrl:[I

    :goto_1
    move-wide v1, p3

    .line 8
    iput-wide v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzpw:J

    move-object v1, p5

    .line 9
    iput-object v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzrm:Ljava/lang/String;

    move v1, p6

    .line 10
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzrn:I

    move v1, p7

    .line 11
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzro:I

    move v1, p8

    .line 12
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzrp:I

    move v1, p9

    .line 13
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzrq:I

    move/from16 v1, p10

    .line 14
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzrr:I

    move/from16 v1, p11

    .line 15
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzrs:I

    move/from16 v1, p12

    .line 16
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzrt:I

    move/from16 v1, p13

    .line 17
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzru:I

    move/from16 v1, p14

    .line 18
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzrv:I

    move/from16 v1, p15

    .line 19
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzrw:I

    move/from16 v1, p16

    .line 20
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzrx:I

    move/from16 v1, p17

    .line 21
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzry:I

    move/from16 v1, p18

    .line 22
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzrz:I

    move/from16 v1, p19

    .line 23
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzsa:I

    move/from16 v1, p20

    .line 24
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzsb:I

    move/from16 v1, p21

    .line 25
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzsc:I

    move/from16 v1, p22

    .line 26
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzsd:I

    move/from16 v1, p23

    .line 27
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzse:I

    move/from16 v1, p24

    .line 28
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzsf:I

    move/from16 v1, p25

    .line 29
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzsg:I

    move/from16 v1, p26

    .line 30
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzsh:I

    move/from16 v1, p27

    .line 31
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzsi:I

    move/from16 v1, p28

    .line 32
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzsj:I

    move/from16 v1, p29

    .line 33
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzsk:I

    move/from16 v1, p30

    .line 34
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzsl:I

    move/from16 v1, p31

    .line 35
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzsm:I

    move/from16 v1, p32

    .line 36
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzsn:I

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    const-string v1, "com.google.android.gms.cast.framework.media.INotificationActionsProvider"

    .line 41
    invoke-interface {v3, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 42
    instance-of v2, v1, Lcom/google/android/gms/cast/framework/media/zzc;

    if-eqz v2, :cond_3

    .line 43
    move-object v4, v1

    check-cast v4, Lcom/google/android/gms/cast/framework/media/zzc;

    goto :goto_2

    .line 44
    :cond_3
    new-instance v4, Lcom/google/android/gms/cast/framework/media/zze;

    invoke-direct {v4, v3}, Lcom/google/android/gms/cast/framework/media/zze;-><init>(Landroid/os/IBinder;)V

    .line 45
    :goto_2
    iput-object v4, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzso:Lcom/google/android/gms/cast/framework/media/zzc;

    return-void
.end method

.method static synthetic zzct()Ljava/util/List;
    .locals 1

    .line 181
    sget-object v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzri:Ljava/util/List;

    return-object v0
.end method

.method static synthetic zzcu()[I
    .locals 1

    .line 182
    sget-object v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzrj:[I

    return-object v0
.end method


# virtual methods
.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzrk:Ljava/util/List;

    return-object v0
.end method

.method public getCastingToDeviceStringResId()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzsb:I

    return v0
.end method

.method public getCompatActionIndices()[I
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzrl:[I

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public getDisconnectDrawableResId()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzrz:I

    return v0
.end method

.method public getForward10DrawableResId()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzru:I

    return v0
.end method

.method public getForward30DrawableResId()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzrv:I

    return v0
.end method

.method public getForwardDrawableResId()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzrt:I

    return v0
.end method

.method public getPauseDrawableResId()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzrp:I

    return v0
.end method

.method public getPlayDrawableResId()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzrq:I

    return v0
.end method

.method public getRewind10DrawableResId()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzrx:I

    return v0
.end method

.method public getRewind30DrawableResId()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzry:I

    return v0
.end method

.method public getRewindDrawableResId()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzrw:I

    return v0
.end method

.method public getSkipNextDrawableResId()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzrr:I

    return v0
.end method

.method public getSkipPrevDrawableResId()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzrs:I

    return v0
.end method

.method public getSkipStepMs()J
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzpw:J

    return-wide v0
.end method

.method public getSmallIconDrawableResId()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzrn:I

    return v0
.end method

.method public getStopLiveStreamDrawableResId()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzro:I

    return v0
.end method

.method public getStopLiveStreamTitleResId()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzsc:I

    return v0
.end method

.method public getTargetActivityClassName()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzrm:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 80
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 82
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getActions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 83
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeStringList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 85
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getCompatActionIndices()[I

    move-result-object v0

    const/4 v1, 0x3

    .line 86
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIntArray(Landroid/os/Parcel;I[IZ)V

    .line 88
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getSkipStepMs()J

    move-result-wide v0

    const/4 v3, 0x4

    .line 89
    invoke-static {p1, v3, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 91
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getTargetActivityClassName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    .line 92
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 94
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getSmallIconDrawableResId()I

    move-result v0

    const/4 v1, 0x6

    .line 95
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 97
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getStopLiveStreamDrawableResId()I

    move-result v0

    const/4 v1, 0x7

    .line 98
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 100
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getPauseDrawableResId()I

    move-result v0

    const/16 v1, 0x8

    .line 101
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 103
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getPlayDrawableResId()I

    move-result v0

    const/16 v1, 0x9

    .line 104
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 106
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getSkipNextDrawableResId()I

    move-result v0

    const/16 v1, 0xa

    .line 107
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 109
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getSkipPrevDrawableResId()I

    move-result v0

    const/16 v1, 0xb

    .line 110
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 112
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getForwardDrawableResId()I

    move-result v0

    const/16 v1, 0xc

    .line 113
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 115
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getForward10DrawableResId()I

    move-result v0

    const/16 v1, 0xd

    .line 116
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 118
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getForward30DrawableResId()I

    move-result v0

    const/16 v1, 0xe

    .line 119
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 121
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getRewindDrawableResId()I

    move-result v0

    const/16 v1, 0xf

    .line 122
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 124
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getRewind10DrawableResId()I

    move-result v0

    const/16 v1, 0x10

    .line 125
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 127
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getRewind30DrawableResId()I

    move-result v0

    const/16 v1, 0x11

    .line 128
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 130
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getDisconnectDrawableResId()I

    move-result v0

    const/16 v1, 0x12

    .line 131
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 133
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzsa:I

    const/16 v1, 0x13

    .line 134
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 136
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getCastingToDeviceStringResId()I

    move-result v0

    const/16 v1, 0x14

    .line 137
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 139
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getStopLiveStreamTitleResId()I

    move-result v0

    const/16 v1, 0x15

    .line 140
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 142
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzsd:I

    const/16 v1, 0x16

    .line 143
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 145
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzse:I

    const/16 v1, 0x17

    .line 146
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 148
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzsf:I

    const/16 v1, 0x18

    .line 149
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 151
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzsg:I

    const/16 v1, 0x19

    .line 152
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 154
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzsh:I

    const/16 v1, 0x1a

    .line 155
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 157
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzsi:I

    const/16 v1, 0x1b

    .line 158
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 160
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzsj:I

    const/16 v1, 0x1c

    .line 161
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 163
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzsk:I

    const/16 v1, 0x1d

    .line 164
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 166
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzsl:I

    const/16 v1, 0x1e

    .line 167
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 169
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzsm:I

    const/16 v1, 0x1f

    .line 170
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 172
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzsn:I

    const/16 v1, 0x20

    .line 173
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 176
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzso:Lcom/google/android/gms/cast/framework/media/zzc;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/media/zzc;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    const/16 v1, 0x21

    .line 178
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 179
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzcg()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzsa:I

    return v0
.end method

.method public final zzch()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzsd:I

    return v0
.end method

.method public final zzci()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzse:I

    return v0
.end method

.method public final zzcj()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzsf:I

    return v0
.end method

.method public final zzck()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzsg:I

    return v0
.end method

.method public final zzcl()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzsh:I

    return v0
.end method

.method public final zzcm()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzsi:I

    return v0
.end method

.method public final zzcn()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzsj:I

    return v0
.end method

.method public final zzco()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzsk:I

    return v0
.end method

.method public final zzcp()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzsl:I

    return v0
.end method

.method public final zzcq()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzsm:I

    return v0
.end method

.method public final zzcr()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzsn:I

    return v0
.end method

.method public final zzcs()Lcom/google/android/gms/cast/framework/media/zzc;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzso:Lcom/google/android/gms/cast/framework/media/zzc;

    return-object v0
.end method
