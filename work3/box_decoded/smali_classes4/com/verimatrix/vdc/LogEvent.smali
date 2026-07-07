.class public Lcom/verimatrix/vdc/LogEvent;
.super Ljava/lang/Object;
.source "LogEvent.java"


# instance fields
.field private checked:Z

.field private header:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private properties:[Ljava/lang/String;

.field private result:Ljava/lang/Object;

.field private timestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J[Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    .line 17
    invoke-direct/range {v0 .. v5}, Lcom/verimatrix/vdc/LogEvent;-><init>(Ljava/lang/String;J[Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J[Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/verimatrix/vdc/LogEvent;->name:Ljava/lang/String;

    .line 22
    iput-wide p2, p0, Lcom/verimatrix/vdc/LogEvent;->timestamp:J

    if-eqz p4, :cond_0

    .line 24
    invoke-virtual {p4}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/verimatrix/vdc/LogEvent;->properties:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/verimatrix/vdc/LogEvent;->properties:[Ljava/lang/String;

    .line 28
    :goto_0
    iput-object p5, p0, Lcom/verimatrix/vdc/LogEvent;->result:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getHeader()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/verimatrix/vdc/LogEvent;->header:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/verimatrix/vdc/LogEvent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()[Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/verimatrix/vdc/LogEvent;->properties:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/verimatrix/vdc/LogEvent;->properties:[Ljava/lang/String;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/verimatrix/vdc/LogEvent;->properties:[Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/verimatrix/vdc/LogEvent;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 48
    iget-wide v0, p0, Lcom/verimatrix/vdc/LogEvent;->timestamp:J

    return-wide v0
.end method

.method public isChecked()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/verimatrix/vdc/LogEvent;->checked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/verimatrix/vdc/LogEvent;->checked:Z

    return-void
.end method

.method public setHeader(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/verimatrix/vdc/LogEvent;->header:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/verimatrix/vdc/LogEvent;->name:Ljava/lang/String;

    return-void
.end method

.method public setProperties([Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 64
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/verimatrix/vdc/LogEvent;->properties:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/verimatrix/vdc/LogEvent;->properties:[Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setResult(Lcom/verimatrix/vdc/Monitor$Status;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/verimatrix/vdc/LogEvent;->result:Ljava/lang/Object;

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    .line 52
    iput-wide p1, p0, Lcom/verimatrix/vdc/LogEvent;->timestamp:J

    return-void
.end method
