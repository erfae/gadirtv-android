.class public final enum Lcom/google/android/gms/internal/cast/zzic;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-cast@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzlg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/cast/zzic;",
        ">;",
        "Lcom/google/android/gms/internal/cast/zzlg;"
    }
.end annotation


# static fields
.field private static final zzagi:Lcom/google/android/gms/internal/cast/zzlf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/cast/zzlf<",
            "Lcom/google/android/gms/internal/cast/zzic;",
            ">;"
        }
    .end annotation
.end field

.field private static final enum zzawm:Lcom/google/android/gms/internal/cast/zzic;

.field private static final enum zzawn:Lcom/google/android/gms/internal/cast/zzic;

.field private static final enum zzawo:Lcom/google/android/gms/internal/cast/zzic;

.field private static final enum zzawp:Lcom/google/android/gms/internal/cast/zzic;

.field private static final enum zzawq:Lcom/google/android/gms/internal/cast/zzic;

.field private static final enum zzawr:Lcom/google/android/gms/internal/cast/zzic;

.field private static final enum zzaws:Lcom/google/android/gms/internal/cast/zzic;

.field private static final enum zzawt:Lcom/google/android/gms/internal/cast/zzic;

.field private static final enum zzawu:Lcom/google/android/gms/internal/cast/zzic;

.field private static final enum zzawv:Lcom/google/android/gms/internal/cast/zzic;

.field private static final enum zzaww:Lcom/google/android/gms/internal/cast/zzic;

.field private static final enum zzawx:Lcom/google/android/gms/internal/cast/zzic;

.field private static final enum zzawy:Lcom/google/android/gms/internal/cast/zzic;

.field private static final enum zzawz:Lcom/google/android/gms/internal/cast/zzic;

.field private static final enum zzaxa:Lcom/google/android/gms/internal/cast/zzic;

.field private static final synthetic zzaxb:[Lcom/google/android/gms/internal/cast/zzic;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/cast/zzic;

    const-string v1, "REMOTE_CONTROL_NOTIFICATION_CANCEL_REASON_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/cast/zzic;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzic;->zzawm:Lcom/google/android/gms/internal/cast/zzic;

    .line 18
    new-instance v1, Lcom/google/android/gms/internal/cast/zzic;

    const-string v3, "REMOTE_CONTROL_NOTIFICATION_CANCEL_REASON_USER_DISMISSED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/cast/zzic;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/cast/zzic;->zzawn:Lcom/google/android/gms/internal/cast/zzic;

    .line 19
    new-instance v3, Lcom/google/android/gms/internal/cast/zzic;

    const-string v5, "REMOTE_CONTROL_NOTIFICATION_CANCEL_REASON_USER_STOPPED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/cast/zzic;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/cast/zzic;->zzawo:Lcom/google/android/gms/internal/cast/zzic;

    .line 20
    new-instance v5, Lcom/google/android/gms/internal/cast/zzic;

    const-string v7, "REMOTE_CONTROL_NOTIFICATION_CANCEL_REASON_RECEIVER_OFFLINE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/internal/cast/zzic;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/cast/zzic;->zzawp:Lcom/google/android/gms/internal/cast/zzic;

    .line 21
    new-instance v7, Lcom/google/android/gms/internal/cast/zzic;

    const-string v9, "REMOTE_CONTROL_NOTIFICATION_CANCEL_REASON_SENDER_BECAME_PRIMARY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/google/android/gms/internal/cast/zzic;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/cast/zzic;->zzawq:Lcom/google/android/gms/internal/cast/zzic;

    .line 22
    new-instance v9, Lcom/google/android/gms/internal/cast/zzic;

    const-string v11, "REMOTE_CONTROL_NOTIFICATION_CANCEL_REASON_RECEIVER_PRIVATE_MODE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/google/android/gms/internal/cast/zzic;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/cast/zzic;->zzawr:Lcom/google/android/gms/internal/cast/zzic;

    .line 23
    new-instance v11, Lcom/google/android/gms/internal/cast/zzic;

    const-string v13, "REMOTE_CONTROL_NOTIFICATION_CANCEL_REASON_USER_DISABLE_FROM_SETTINGS"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/google/android/gms/internal/cast/zzic;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/gms/internal/cast/zzic;->zzaws:Lcom/google/android/gms/internal/cast/zzic;

    .line 24
    new-instance v13, Lcom/google/android/gms/internal/cast/zzic;

    const-string v15, "REMOTE_CONTROL_NOTIFICATION_CANCEL_REASON_CONNECTION_TO_GMSCORE_FAILED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/google/android/gms/internal/cast/zzic;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/android/gms/internal/cast/zzic;->zzawt:Lcom/google/android/gms/internal/cast/zzic;

    .line 25
    new-instance v15, Lcom/google/android/gms/internal/cast/zzic;

    const-string v14, "REMOTE_CONTROL_NOTIFICATION_CANCEL_REASON_CONNECTION_TO_RECEIVER_FAILED"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/google/android/gms/internal/cast/zzic;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/google/android/gms/internal/cast/zzic;->zzawu:Lcom/google/android/gms/internal/cast/zzic;

    .line 26
    new-instance v14, Lcom/google/android/gms/internal/cast/zzic;

    const-string v12, "REMOTE_CONTROL_NOTIFICATION_CANCEL_REASON_NEW_SERVICE_STARTED"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/google/android/gms/internal/cast/zzic;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/google/android/gms/internal/cast/zzic;->zzawv:Lcom/google/android/gms/internal/cast/zzic;

    .line 27
    new-instance v12, Lcom/google/android/gms/internal/cast/zzic;

    const-string v10, "REMOTE_CONTROL_NOTIFICATION_CANCEL_REASON_INVALID_APPLICATION"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lcom/google/android/gms/internal/cast/zzic;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/android/gms/internal/cast/zzic;->zzaww:Lcom/google/android/gms/internal/cast/zzic;

    .line 28
    new-instance v10, Lcom/google/android/gms/internal/cast/zzic;

    const-string v8, "REMOTE_CONTROL_NOTIFICATION_CANCEL_REASON_APPLICATION_DISCONNECTED"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lcom/google/android/gms/internal/cast/zzic;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/android/gms/internal/cast/zzic;->zzawx:Lcom/google/android/gms/internal/cast/zzic;

    .line 29
    new-instance v8, Lcom/google/android/gms/internal/cast/zzic;

    const-string v6, "REMOTE_CONTROL_NOTIFICATION_CANCEL_REASON_NO_MEDIA_SESSION"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lcom/google/android/gms/internal/cast/zzic;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/gms/internal/cast/zzic;->zzawy:Lcom/google/android/gms/internal/cast/zzic;

    .line 30
    new-instance v6, Lcom/google/android/gms/internal/cast/zzic;

    const-string v4, "REMOTE_CONTROL_NOTIFICATION_CANCEL_REASON_SERVICE_STOPPED"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Lcom/google/android/gms/internal/cast/zzic;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/gms/internal/cast/zzic;->zzawz:Lcom/google/android/gms/internal/cast/zzic;

    .line 31
    new-instance v4, Lcom/google/android/gms/internal/cast/zzic;

    const-string v2, "REMOTE_CONTROL_NOTIFICATION_CANCEL_SCEEN_OFF"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v6}, Lcom/google/android/gms/internal/cast/zzic;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/gms/internal/cast/zzic;->zzaxa:Lcom/google/android/gms/internal/cast/zzic;

    const/16 v2, 0xf

    new-array v2, v2, [Lcom/google/android/gms/internal/cast/zzic;

    const/16 v16, 0x0

    aput-object v0, v2, v16

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    aput-object v4, v2, v6

    .line 32
    sput-object v2, Lcom/google/android/gms/internal/cast/zzic;->zzaxb:[Lcom/google/android/gms/internal/cast/zzic;

    .line 33
    new-instance v0, Lcom/google/android/gms/internal/cast/zzif;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzif;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzic;->zzagi:Lcom/google/android/gms/internal/cast/zzlf;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput p3, p0, Lcom/google/android/gms/internal/cast/zzic;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/cast/zzic;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/zzic;->zzaxb:[Lcom/google/android/gms/internal/cast/zzic;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/cast/zzic;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/cast/zzic;

    return-object v0
.end method

.method public static zzfx()Lcom/google/android/gms/internal/cast/zzli;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/cast/zzie;->zzago:Lcom/google/android/gms/internal/cast/zzli;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget v1, p0, Lcom/google/android/gms/internal/cast/zzic;->value:I

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzic;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzfw()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/cast/zzic;->value:I

    return v0
.end method
