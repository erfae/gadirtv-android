.class public Lcom/framework/utilityframe/webhelper/ServerResponse;
.super Ljava/lang/Object;
.source "ServerResponse.java"


# instance fields
.field public connection_timeout:Z

.field public parsing_error:Z

.field public response_boolean:Z

.field public response_double:D

.field public response_int:I

.field public response_string:Ljava/lang/String;

.field public status_code:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/framework/utilityframe/webhelper/ServerResponse;->parsing_error:Z

    .line 5
    iput-boolean v0, p0, Lcom/framework/utilityframe/webhelper/ServerResponse;->response_boolean:Z

    const-string v1, ""

    .line 6
    iput-object v1, p0, Lcom/framework/utilityframe/webhelper/ServerResponse;->response_string:Ljava/lang/String;

    const/4 v1, -0x1

    .line 7
    iput v1, p0, Lcom/framework/utilityframe/webhelper/ServerResponse;->response_int:I

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    .line 8
    iput-wide v1, p0, Lcom/framework/utilityframe/webhelper/ServerResponse;->response_double:D

    .line 9
    iput-boolean v0, p0, Lcom/framework/utilityframe/webhelper/ServerResponse;->connection_timeout:Z

    return-void
.end method
