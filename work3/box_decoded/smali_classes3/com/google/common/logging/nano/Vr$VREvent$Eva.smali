.class public final Lcom/google/common/logging/nano/Vr$VREvent$Eva;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/nano/Vr$VREvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Eva"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/nano/Vr$VREvent$Eva$SelectionAction;,
        Lcom/google/common/logging/nano/Vr$VREvent$Eva$CameraFirmwareUpdate;,
        Lcom/google/common/logging/nano/Vr$VREvent$Eva$Delete;,
        Lcom/google/common/logging/nano/Vr$VREvent$Eva$Share;,
        Lcom/google/common/logging/nano/Vr$VREvent$Eva$ExportMedia;,
        Lcom/google/common/logging/nano/Vr$VREvent$Eva$WigglegramGeneration;,
        Lcom/google/common/logging/nano/Vr$VREvent$Eva$WifiSetupSession;,
        Lcom/google/common/logging/nano/Vr$VREvent$Eva$BluetoothSession;,
        Lcom/google/common/logging/nano/Vr$VREvent$Eva$CameraStatus;,
        Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;,
        Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;,
        Lcom/google/common/logging/nano/Vr$VREvent$Eva$Pairing;,
        Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;,
        Lcom/google/common/logging/nano/Vr$VREvent$Eva$VideoInfo;,
        Lcom/google/common/logging/nano/Vr$VREvent$Eva$Resolution;,
        Lcom/google/common/logging/nano/Vr$VREvent$Eva$LocalGalleryStats;,
        Lcom/google/common/logging/nano/Vr$VREvent$Eva$CameraInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/common/logging/nano/Vr$VREvent$Eva;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public bluetoothSession:Lcom/google/common/logging/nano/Vr$VREvent$Eva$BluetoothSession;

.field public cameraFirmwareUpdate:Lcom/google/common/logging/nano/Vr$VREvent$Eva$CameraFirmwareUpdate;

.field public cameraStatus:Lcom/google/common/logging/nano/Vr$VREvent$Eva$CameraStatus;

.field public cameraType:Lcom/google/common/logging/nano/Vr$VREvent$Eva$CameraInfo;

.field public capture:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;

.field public delete:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Delete;

.field public exportMedia:Lcom/google/common/logging/nano/Vr$VREvent$Eva$ExportMedia;

.field public fileTransfer:Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;

.field public localGalleryStats:Lcom/google/common/logging/nano/Vr$VREvent$Eva$LocalGalleryStats;

.field public pairing:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Pairing;

.field public selectionAction:Lcom/google/common/logging/nano/Vr$VREvent$Eva$SelectionAction;

.field public share:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Share;

.field public view:Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;

.field public wifiSetupSession:Lcom/google/common/logging/nano/Vr$VREvent$Eva$WifiSetupSession;

.field public wigglegramGeneration:Lcom/google/common/logging/nano/Vr$VREvent$Eva$WigglegramGeneration;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->clear()Lcom/google/common/logging/nano/Vr$VREvent$Eva;

    return-void
.end method


# virtual methods
.method public final clear()Lcom/google/common/logging/nano/Vr$VREvent$Eva;
    .locals 1

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->cameraType:Lcom/google/common/logging/nano/Vr$VREvent$Eva$CameraInfo;

    .line 5
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->capture:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;

    .line 6
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->pairing:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Pairing;

    .line 7
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->fileTransfer:Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;

    .line 8
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->view:Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;

    .line 9
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->cameraStatus:Lcom/google/common/logging/nano/Vr$VREvent$Eva$CameraStatus;

    .line 10
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->bluetoothSession:Lcom/google/common/logging/nano/Vr$VREvent$Eva$BluetoothSession;

    .line 11
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->wifiSetupSession:Lcom/google/common/logging/nano/Vr$VREvent$Eva$WifiSetupSession;

    .line 12
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->share:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Share;

    .line 13
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->delete:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Delete;

    .line 14
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->localGalleryStats:Lcom/google/common/logging/nano/Vr$VREvent$Eva$LocalGalleryStats;

    .line 15
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->wigglegramGeneration:Lcom/google/common/logging/nano/Vr$VREvent$Eva$WigglegramGeneration;

    .line 16
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->exportMedia:Lcom/google/common/logging/nano/Vr$VREvent$Eva$ExportMedia;

    .line 17
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->cameraFirmwareUpdate:Lcom/google/common/logging/nano/Vr$VREvent$Eva$CameraFirmwareUpdate;

    .line 18
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->selectionAction:Lcom/google/common/logging/nano/Vr$VREvent$Eva$SelectionAction;

    .line 19
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->cachedSize:I

    return-object p0
.end method

.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$Eva;
    .locals 2

    .line 22
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->cameraType:Lcom/google/common/logging/nano/Vr$VREvent$Eva$CameraInfo;

    if-eqz v1, :cond_0

    .line 27
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$CameraInfo;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Eva$CameraInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->cameraType:Lcom/google/common/logging/nano/Vr$VREvent$Eva$CameraInfo;

    .line 28
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->capture:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;

    if-eqz v1, :cond_1

    .line 29
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->capture:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;

    .line 30
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->pairing:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Pairing;

    if-eqz v1, :cond_2

    .line 31
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Pairing;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Eva$Pairing;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->pairing:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Pairing;

    .line 32
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->fileTransfer:Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;

    if-eqz v1, :cond_3

    .line 33
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->fileTransfer:Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;

    .line 34
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->view:Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;

    if-eqz v1, :cond_4

    .line 35
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->view:Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;

    .line 36
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->cameraStatus:Lcom/google/common/logging/nano/Vr$VREvent$Eva$CameraStatus;

    if-eqz v1, :cond_5

    .line 37
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$CameraStatus;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Eva$CameraStatus;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->cameraStatus:Lcom/google/common/logging/nano/Vr$VREvent$Eva$CameraStatus;

    .line 38
    :cond_5
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->bluetoothSession:Lcom/google/common/logging/nano/Vr$VREvent$Eva$BluetoothSession;

    if-eqz v1, :cond_6

    .line 39
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$BluetoothSession;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Eva$BluetoothSession;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->bluetoothSession:Lcom/google/common/logging/nano/Vr$VREvent$Eva$BluetoothSession;

    .line 40
    :cond_6
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->wifiSetupSession:Lcom/google/common/logging/nano/Vr$VREvent$Eva$WifiSetupSession;

    if-eqz v1, :cond_7

    .line 41
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$WifiSetupSession;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Eva$WifiSetupSession;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->wifiSetupSession:Lcom/google/common/logging/nano/Vr$VREvent$Eva$WifiSetupSession;

    .line 42
    :cond_7
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->share:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Share;

    if-eqz v1, :cond_8

    .line 43
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Share;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Eva$Share;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->share:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Share;

    .line 44
    :cond_8
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->delete:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Delete;

    if-eqz v1, :cond_9

    .line 45
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Delete;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Eva$Delete;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->delete:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Delete;

    .line 46
    :cond_9
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->localGalleryStats:Lcom/google/common/logging/nano/Vr$VREvent$Eva$LocalGalleryStats;

    if-eqz v1, :cond_a

    .line 47
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$LocalGalleryStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Eva$LocalGalleryStats;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->localGalleryStats:Lcom/google/common/logging/nano/Vr$VREvent$Eva$LocalGalleryStats;

    .line 48
    :cond_a
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->wigglegramGeneration:Lcom/google/common/logging/nano/Vr$VREvent$Eva$WigglegramGeneration;

    if-eqz v1, :cond_b

    .line 49
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$WigglegramGeneration;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Eva$WigglegramGeneration;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->wigglegramGeneration:Lcom/google/common/logging/nano/Vr$VREvent$Eva$WigglegramGeneration;

    .line 50
    :cond_b
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->exportMedia:Lcom/google/common/logging/nano/Vr$VREvent$Eva$ExportMedia;

    if-eqz v1, :cond_c

    .line 51
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$ExportMedia;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Eva$ExportMedia;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->exportMedia:Lcom/google/common/logging/nano/Vr$VREvent$Eva$ExportMedia;

    .line 52
    :cond_c
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->cameraFirmwareUpdate:Lcom/google/common/logging/nano/Vr$VREvent$Eva$CameraFirmwareUpdate;

    if-eqz v1, :cond_d

    .line 53
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$CameraFirmwareUpdate;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Eva$CameraFirmwareUpdate;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->cameraFirmwareUpdate:Lcom/google/common/logging/nano/Vr$VREvent$Eva$CameraFirmwareUpdate;

    .line 54
    :cond_d
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->selectionAction:Lcom/google/common/logging/nano/Vr$VREvent$Eva$SelectionAction;

    if-eqz v1, :cond_e

    .line 55
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$SelectionAction;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Eva$SelectionAction;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->selectionAction:Lcom/google/common/logging/nano/Vr$VREvent$Eva$SelectionAction;

    :cond_e
    return-object v0

    :catch_0
    move-exception v0

    .line 25
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 201
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Eva;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 202
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Eva;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 204
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Eva;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .line 89
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 90
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->cameraType:Lcom/google/common/logging/nano/Vr$VREvent$Eva$CameraInfo;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 92
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->capture:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 95
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 96
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->pairing:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Pairing;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 98
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 99
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->fileTransfer:Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    .line 101
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 102
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->view:Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;

    if-eqz v1, :cond_4

    const/4 v2, 0x5

    .line 104
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 105
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->cameraStatus:Lcom/google/common/logging/nano/Vr$VREvent$Eva$CameraStatus;

    if-eqz v1, :cond_5

    const/4 v2, 0x6

    .line 107
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 108
    :cond_5
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->bluetoothSession:Lcom/google/common/logging/nano/Vr$VREvent$Eva$BluetoothSession;

    if-eqz v1, :cond_6

    const/4 v2, 0x7

    .line 110
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 111
    :cond_6
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->wifiSetupSession:Lcom/google/common/logging/nano/Vr$VREvent$Eva$WifiSetupSession;

    if-eqz v1, :cond_7

    const/16 v2, 0x8

    .line 113
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 114
    :cond_7
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->share:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Share;

    if-eqz v1, :cond_8

    const/16 v2, 0x9

    .line 116
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 117
    :cond_8
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->delete:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Delete;

    if-eqz v1, :cond_9

    const/16 v2, 0xa

    .line 119
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 120
    :cond_9
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->localGalleryStats:Lcom/google/common/logging/nano/Vr$VREvent$Eva$LocalGalleryStats;

    if-eqz v1, :cond_a

    const/16 v2, 0xb

    .line 122
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 123
    :cond_a
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->wigglegramGeneration:Lcom/google/common/logging/nano/Vr$VREvent$Eva$WigglegramGeneration;

    if-eqz v1, :cond_b

    const/16 v2, 0xc

    .line 125
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 126
    :cond_b
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->exportMedia:Lcom/google/common/logging/nano/Vr$VREvent$Eva$ExportMedia;

    if-eqz v1, :cond_c

    const/16 v2, 0xd

    .line 128
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 129
    :cond_c
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->cameraFirmwareUpdate:Lcom/google/common/logging/nano/Vr$VREvent$Eva$CameraFirmwareUpdate;

    if-eqz v1, :cond_d

    const/16 v2, 0xe

    .line 131
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 132
    :cond_d
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->selectionAction:Lcom/google/common/logging/nano/Vr$VREvent$Eva$SelectionAction;

    if-eqz v1, :cond_e

    const/16 v2, 0xf

    .line 134
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    return v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$Eva;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 139
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 197
    :sswitch_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->selectionAction:Lcom/google/common/logging/nano/Vr$VREvent$Eva$SelectionAction;

    if-nez v0, :cond_1

    .line 198
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$SelectionAction;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$SelectionAction;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->selectionAction:Lcom/google/common/logging/nano/Vr$VREvent$Eva$SelectionAction;

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->selectionAction:Lcom/google/common/logging/nano/Vr$VREvent$Eva$SelectionAction;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 193
    :sswitch_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->cameraFirmwareUpdate:Lcom/google/common/logging/nano/Vr$VREvent$Eva$CameraFirmwareUpdate;

    if-nez v0, :cond_2

    .line 194
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$CameraFirmwareUpdate;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$CameraFirmwareUpdate;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->cameraFirmwareUpdate:Lcom/google/common/logging/nano/Vr$VREvent$Eva$CameraFirmwareUpdate;

    .line 195
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->cameraFirmwareUpdate:Lcom/google/common/logging/nano/Vr$VREvent$Eva$CameraFirmwareUpdate;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 189
    :sswitch_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->exportMedia:Lcom/google/common/logging/nano/Vr$VREvent$Eva$ExportMedia;

    if-nez v0, :cond_3

    .line 190
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$ExportMedia;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$ExportMedia;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->exportMedia:Lcom/google/common/logging/nano/Vr$VREvent$Eva$ExportMedia;

    .line 191
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->exportMedia:Lcom/google/common/logging/nano/Vr$VREvent$Eva$ExportMedia;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 185
    :sswitch_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->wigglegramGeneration:Lcom/google/common/logging/nano/Vr$VREvent$Eva$WigglegramGeneration;

    if-nez v0, :cond_4

    .line 186
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$WigglegramGeneration;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$WigglegramGeneration;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->wigglegramGeneration:Lcom/google/common/logging/nano/Vr$VREvent$Eva$WigglegramGeneration;

    .line 187
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->wigglegramGeneration:Lcom/google/common/logging/nano/Vr$VREvent$Eva$WigglegramGeneration;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 181
    :sswitch_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->localGalleryStats:Lcom/google/common/logging/nano/Vr$VREvent$Eva$LocalGalleryStats;

    if-nez v0, :cond_5

    .line 182
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$LocalGalleryStats;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$LocalGalleryStats;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->localGalleryStats:Lcom/google/common/logging/nano/Vr$VREvent$Eva$LocalGalleryStats;

    .line 183
    :cond_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->localGalleryStats:Lcom/google/common/logging/nano/Vr$VREvent$Eva$LocalGalleryStats;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 177
    :sswitch_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->delete:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Delete;

    if-nez v0, :cond_6

    .line 178
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Delete;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Delete;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->delete:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Delete;

    .line 179
    :cond_6
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->delete:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Delete;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 173
    :sswitch_6
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->share:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Share;

    if-nez v0, :cond_7

    .line 174
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Share;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Share;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->share:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Share;

    .line 175
    :cond_7
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->share:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Share;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 169
    :sswitch_7
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->wifiSetupSession:Lcom/google/common/logging/nano/Vr$VREvent$Eva$WifiSetupSession;

    if-nez v0, :cond_8

    .line 170
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$WifiSetupSession;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$WifiSetupSession;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->wifiSetupSession:Lcom/google/common/logging/nano/Vr$VREvent$Eva$WifiSetupSession;

    .line 171
    :cond_8
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->wifiSetupSession:Lcom/google/common/logging/nano/Vr$VREvent$Eva$WifiSetupSession;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 165
    :sswitch_8
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->bluetoothSession:Lcom/google/common/logging/nano/Vr$VREvent$Eva$BluetoothSession;

    if-nez v0, :cond_9

    .line 166
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$BluetoothSession;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$BluetoothSession;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->bluetoothSession:Lcom/google/common/logging/nano/Vr$VREvent$Eva$BluetoothSession;

    .line 167
    :cond_9
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->bluetoothSession:Lcom/google/common/logging/nano/Vr$VREvent$Eva$BluetoothSession;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 161
    :sswitch_9
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->cameraStatus:Lcom/google/common/logging/nano/Vr$VREvent$Eva$CameraStatus;

    if-nez v0, :cond_a

    .line 162
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$CameraStatus;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$CameraStatus;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->cameraStatus:Lcom/google/common/logging/nano/Vr$VREvent$Eva$CameraStatus;

    .line 163
    :cond_a
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->cameraStatus:Lcom/google/common/logging/nano/Vr$VREvent$Eva$CameraStatus;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 157
    :sswitch_a
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->view:Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;

    if-nez v0, :cond_b

    .line 158
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->view:Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;

    .line 159
    :cond_b
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->view:Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 153
    :sswitch_b
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->fileTransfer:Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;

    if-nez v0, :cond_c

    .line 154
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->fileTransfer:Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;

    .line 155
    :cond_c
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->fileTransfer:Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 149
    :sswitch_c
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->pairing:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Pairing;

    if-nez v0, :cond_d

    .line 150
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Pairing;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Pairing;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->pairing:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Pairing;

    .line 151
    :cond_d
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->pairing:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Pairing;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 145
    :sswitch_d
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->capture:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;

    if-nez v0, :cond_e

    .line 146
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->capture:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;

    .line 147
    :cond_e
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->capture:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 141
    :sswitch_e
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->cameraType:Lcom/google/common/logging/nano/Vr$VREvent$Eva$CameraInfo;

    if-nez v0, :cond_f

    .line 142
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$CameraInfo;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$CameraInfo;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->cameraType:Lcom/google/common/logging/nano/Vr$VREvent$Eva$CameraInfo;

    .line 143
    :cond_f
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->cameraType:Lcom/google/common/logging/nano/Vr$VREvent$Eva$CameraInfo;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_f
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_f
        0xa -> :sswitch_e
        0x12 -> :sswitch_d
        0x1a -> :sswitch_c
        0x22 -> :sswitch_b
        0x2a -> :sswitch_a
        0x32 -> :sswitch_9
        0x3a -> :sswitch_8
        0x42 -> :sswitch_7
        0x4a -> :sswitch_6
        0x52 -> :sswitch_5
        0x5a -> :sswitch_4
        0x62 -> :sswitch_3
        0x6a -> :sswitch_2
        0x72 -> :sswitch_1
        0x7a -> :sswitch_0
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$Eva;

    move-result-object p1

    return-object p1
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->cameraType:Lcom/google/common/logging/nano/Vr$VREvent$Eva$CameraInfo;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 58
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->capture:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 60
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->pairing:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Pairing;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 62
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->fileTransfer:Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 64
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 65
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->view:Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 66
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 67
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->cameraStatus:Lcom/google/common/logging/nano/Vr$VREvent$Eva$CameraStatus;

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 68
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 69
    :cond_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->bluetoothSession:Lcom/google/common/logging/nano/Vr$VREvent$Eva$BluetoothSession;

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 70
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 71
    :cond_6
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->wifiSetupSession:Lcom/google/common/logging/nano/Vr$VREvent$Eva$WifiSetupSession;

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    .line 72
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 73
    :cond_7
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->share:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Share;

    if-eqz v0, :cond_8

    const/16 v1, 0x9

    .line 74
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 75
    :cond_8
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->delete:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Delete;

    if-eqz v0, :cond_9

    const/16 v1, 0xa

    .line 76
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 77
    :cond_9
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->localGalleryStats:Lcom/google/common/logging/nano/Vr$VREvent$Eva$LocalGalleryStats;

    if-eqz v0, :cond_a

    const/16 v1, 0xb

    .line 78
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 79
    :cond_a
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->wigglegramGeneration:Lcom/google/common/logging/nano/Vr$VREvent$Eva$WigglegramGeneration;

    if-eqz v0, :cond_b

    const/16 v1, 0xc

    .line 80
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 81
    :cond_b
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->exportMedia:Lcom/google/common/logging/nano/Vr$VREvent$Eva$ExportMedia;

    if-eqz v0, :cond_c

    const/16 v1, 0xd

    .line 82
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 83
    :cond_c
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->cameraFirmwareUpdate:Lcom/google/common/logging/nano/Vr$VREvent$Eva$CameraFirmwareUpdate;

    if-eqz v0, :cond_d

    const/16 v1, 0xe

    .line 84
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 85
    :cond_d
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->selectionAction:Lcom/google/common/logging/nano/Vr$VREvent$Eva$SelectionAction;

    if-eqz v0, :cond_e

    const/16 v1, 0xf

    .line 86
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 87
    :cond_e
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
