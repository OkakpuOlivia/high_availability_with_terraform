# Create a public subnet
resource "aws_subnet" "my_public_subnet01" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = var.cidr_block[0]
  map_public_ip_on_launch = true
  availability_zone       = var.availability_zone[0]
  tags = {
    Name = "ij-pub-subnet01"
  }
}

# Create a public subnet
resource "aws_subnet" "my_public_subnet02" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = var.cidr_block[1]
  map_public_ip_on_launch = true
  availability_zone       = var.availability_zone[1]
  tags = {
    Name = "ij-pub-subnet02"
  }
}

# Create a private subnet
resource "aws_subnet" "my_private_subnet01" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = var.cidr_block[2]
  availability_zone = var.availability_zone[0]

  tags = {
    Name = "ij-prv-subnet01"
  }
}

# Create a private subnet
resource "aws_subnet" "my_private_subnet02" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = var.cidr_block[3]
  availability_zone = var.availability_zone[1]

  tags = {
    Name = "ij-prv-subnet02"
  }
}

# Create a private subnet - database
resource "aws_subnet" "my_private_subnet03" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = var.cidr_block[4]
  availability_zone = var.availability_zone[0]

  tags = {
    Name = "ij-prv-subnet03"
  }
}

# Create a private subnet
resource "aws_subnet" "my_private_subnet04" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = var.cidr_block[5]
  availability_zone = var.availability_zone[1]

  tags = {
    Name = "ij-prv-subnet04"
  }
}