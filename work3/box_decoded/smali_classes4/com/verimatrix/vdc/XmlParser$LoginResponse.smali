.class Lcom/verimatrix/vdc/XmlParser$LoginResponse;
.super Ljava/lang/Object;
.source "XmlParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verimatrix/vdc/XmlParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoginResponse"
.end annotation


# instance fields
.field config:Ljava/lang/String;

.field httpCode:I

.field id:Ljava/lang/String;

.field result:Ljava/lang/String;

.field success:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Failure"

    .line 206
    iput-object v0, p0, Lcom/verimatrix/vdc/XmlParser$LoginResponse;->result:Ljava/lang/String;

    const/4 v0, 0x0

    .line 207
    iput-boolean v0, p0, Lcom/verimatrix/vdc/XmlParser$LoginResponse;->success:Z

    return-void
.end method
