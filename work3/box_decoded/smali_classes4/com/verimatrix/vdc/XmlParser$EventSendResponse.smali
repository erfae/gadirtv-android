.class Lcom/verimatrix/vdc/XmlParser$EventSendResponse;
.super Ljava/lang/Object;
.source "XmlParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verimatrix/vdc/XmlParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EventSendResponse"
.end annotation


# instance fields
.field status:Ljava/lang/String;

.field statusCode:Ljava/lang/String;

.field version:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "failure"

    .line 225
    iput-object v0, p0, Lcom/verimatrix/vdc/XmlParser$EventSendResponse;->status:Ljava/lang/String;

    return-void
.end method
